<?php

$bank_conn = @mysqli_connect(
    "localhost",
    "root",
    "",
    "MBD_BANK"
);

$message = "";

if (isset($_POST['deposit'])) {

    $account_number = trim($_POST['account_number']);
    $amount = floatval($_POST['amount']);

    if ($amount <= 0) {

        $message = "Enter a valid amount.";
    } else {

        // Check Account
        $check = mysqli_query(
            $bank_conn,
            "SELECT * FROM users WHERE account_number='$account_number'"
        );

        if (mysqli_num_rows($check) == 1) {

            $user = mysqli_fetch_assoc($check);

            $balance_before = $user['balance'];

            // Update Balance
            mysqli_query(
                $bank_conn,
                "UPDATE users
                 SET balance = balance + $amount
                 WHERE account_number='$account_number'"
            );

            // Get Updated Balance
            $balanceQuery = mysqli_query(
                $bank_conn,
                "SELECT balance FROM users
                 WHERE account_number='$account_number'"
            );

            $balanceData = mysqli_fetch_assoc($balanceQuery);
            $updatedBalance = $balanceData['balance'];

            // Generate Transaction ID
            $transaction_id = "TXN" . date("YmdHis") . rand(1000, 9999);

            // Store Transaction Record
            mysqli_query(
                $bank_conn,
                "INSERT INTO transactions
                (
                    transaction_id,
                    account_number,
                    transaction_type,
                    amount,
                    balance_before,
                    balance_after,
                    status,
                    remarks
                )
                VALUES
                (
                    '$transaction_id',
                    '$account_number',
                    'Credit',
                    '$amount',
                    '$balance_before',
                    '$updatedBalance',
                    'Success',
                    'Cash Deposit'
                )"
            );

            $message = "₹ " . number_format($amount, 2) . " deposited successfully.<br>Transaction ID : " . $transaction_id;
        } else {

            $message = "Account not found.";
        }
    }
}

?>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MBD BANK | Deposit Money</title>
    <link rel="icon" type="image/svg+xml"
        href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' 
viewBox='0 0 100 100'%3E%3Crect width='100' height='100' rx='20' fill='%23059669'/%3E%3Ctext 
x='50' y='72' text-anchor='middle' font-size='70' font-family='Arial' font-weight='bold' 
fill='white'%3E%E2%82%B9%3C/text%3E%3C/svg%3E">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        /* Body */

        body {

            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background: linear-gradient(135deg, #d1fae5, #ecfdf5);

        }

        /* Page */

        .deposit-page {

            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;

        }

        /* Card */

        .deposit-page .container {

            width: 420px;
            max-width: 100%;
            background: #fff;
            padding: 35px;
            border-radius: 18px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, .15);

        }

        /* Logo */

        .deposit-logo {

            font-size: 32px;
            font-weight: bold;
            text-align: center;
            color: #047857;
            margin-bottom: 20px;

        }

        .deposit-logo span {

            background: #059669;
            color: #fff;
            padding: 8px 14px;
            border-radius: 10px;
            margin-right: 8px;

        }

        /* Heading */

        .deposit-page h2 {

            text-align: center;
            margin-bottom: 25px;
            color: #065f46;

        }

        /* Message */

        .deposit-page .message {

            text-align: center;
            margin-bottom: 15px;
            font-weight: bold;
            color: #047857;

        }

        /* Inputs */

        .deposit-page input {

            width: 100%;
            padding: 13px;
            margin: 10px 0;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 15px;
            transition: .3s;

        }

        .deposit-page input:focus {

            outline: none;
            border-color: #059669;
            box-shadow: 0 0 0 3px rgba(5, 150, 105, .15);

        }

        /* Button */

        .deposit-page button {

            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 10px;
            background: #059669;
            color: #fff;
            font-size: 17px;
            cursor: pointer;
            transition: .3s;

        }

        .deposit-page button:hover {

            background: #047857;
            transform: translateY(-2px);

        }

        /* Mobile */

        @media(max-width:500px) {

            .deposit-page {

                padding: 20px;

            }

            .deposit-page .container {

                padding: 25px;

            }

        }
    </style>

</head>

<body>

    <?php require 'navbar.php'; ?>

    <div class="deposit-page">

        <div class="container">

            <div class="deposit-logo">
                <span>₹</span>MBD Pay
            </div>

            <h2>Deposit Money</h2>

            <?php
            if ($message != "") {
                echo "<div class='message'>$message</div>";
            }
            ?>

            <form method="post">

                <input
                    type="text"
                    name="account_number"
                    placeholder="Account Number"
                    required>

                <input
                    type="number"
                    name="amount"
                    placeholder="Deposit Amount"
                    step="0.01"
                    min="1"
                    required>

                <button
                    type="submit"
                    name="deposit">
                    Deposit Money
                </button>

            </form>

        </div>

    </div>

    <?php require 'footer.php'; ?>

</body>

</html>