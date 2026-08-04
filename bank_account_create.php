<?php

$bank_conn = @mysqli_connect(
    "localhost",
    "root",
    "",
    "ram_bank"
);


// secret key
define("SECRET_KEY", "MBDPAY@2026_SUPER_SECRET_KEY_32");

/* Encrypt Function */
function encryptData($text)
{
    $key = hash("sha256", SECRET_KEY, true);
    $iv  = random_bytes(16);

    $cipher = openssl_encrypt(
        $text,
        "AES-256-CBC",
        $key,
        OPENSSL_RAW_DATA,
        $iv
    );

    return base64_encode($iv . $cipher);
}

/* Decrypt Function */

function decryptData($text)
{
    $key = hash("sha256", SECRET_KEY, true);

    $data = base64_decode($text);

    $iv = substr($data, 0, 16);

    $cipher = substr($data, 16);


    return openssl_decrypt(
        $cipher,
        "AES-256-CBC",
        $key,
        OPENSSL_RAW_DATA,
        $iv
    );
}

$message = "";

if (isset($_POST['save'])) {

    $customer_id = $_POST['customer_id'];
    $account_number = $_POST['account_number'];
    $ifsc = $_POST['ifsc'];
    $name = $_POST['name'];
    $father_name = $_POST['father_name'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $current_address = $_POST['current_address'];
    $occupation = $_POST['occupation'];
    $mobile = $_POST['mobile'];
    $email = $_POST['email'];
    $aadhar = $_POST['aadhar'];
    $transaction_id = $_POST['transaction_id'];
    $account_status = $_POST['account_status'];
    $balance = encryptData($_POST['balance']);
    $account_type = $_POST['account_type'];
    $pin = password_hash($_POST['pin'], PASSWORD_DEFAULT);

    $sql = "INSERT INTO users
(
customer_id,
account_number,
ifsc,
name,
father_name,
age,
gender,
current_address,
occupation,
mobile,
email,
aadhar,
transaction_id,
account_status,
open_date,
open_time,
balance,
account_type,
pin
)
VALUES
(
'$customer_id',
'$account_number',
'$ifsc',
'$name',
'$father_name',
'$age',
'$gender',
'$current_address',
'$occupation',
'$mobile',
'$email',
'$aadhar',
'$transaction_id',
'$account_status',
CURDATE(),
CURTIME(),
'$balance',
'$account_type',
'$pin'
)";

    if (mysqli_query($bank_conn, $sql)) {

        $message = "Account Created Successfully.";
    } else {

        $message = "Error : " . mysqli_error($bank_conn);
    }
}

?>

<!DOCTYPE html>
<html>

<head>

    <title>MBD BANK | Create Account</title>

    <link rel="icon" type="image/svg+xml"
        href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' 
viewBox='0 0 100 100'%3E%3Crect width='100' height='100' rx='20' fill='%23059669'/%3E%3Ctext 
x='50' y='72' text-anchor='middle' font-size='70' font-family='Arial' font-weight='bold' 
fill='white'%3E%E2%82%B9%3C/text%3E%3C/svg%3E">

    <style>
        body {

            font-family: Arial;

            background: #f2f8f5;

        }

        .container {

            width: 700px;

            margin: 30px auto;

            background: white;

            padding: 30px;

            border-radius: 15px;

            box-shadow: 0 0 15px rgba(0, 0, 0, .2);

        }

        h2 {

            text-align: center;

            color: #047857;

        }

        input,
        select,
        textarea {

            width: 100%;

            padding: 12px;

            margin: 8px 0;

            border: 1px solid #ccc;

            border-radius: 8px;

        }

        button {

            width: 100%;

            padding: 14px;

            background: #059669;

            color: white;

            border: none;

            border-radius: 8px;

            font-size: 17px;

            cursor: pointer;

        }

        button:hover {

            background: #047857;

        }

        .msg {

            text-align: center;

            color: green;

            font-weight: bold;

            margin-bottom: 15px;

        }
    </style>

</head>

<body>
    <?php require 'navbar.php' ?>
    <div class="container">

        <h2>Create New Account</h2>

        <?php if ($message != "") { ?>

            <div class="msg"><?php echo $message; ?></div>

        <?php } ?>

        <form method="post">

            <input type="text" name="customer_id" placeholder="Customer ID" required>

            <input type="text" name="account_number" placeholder="Account Number" required>

            <input type="hidden" name="ifsc" value="MBD002181" required>

            <input type="text" name="name" placeholder="Full Name" required>

            <input type="text" name="father_name" placeholder="Father Name">

            <input type="number" name="age" placeholder="Age">

            <select name="gender">
                <option>Male</option>
                <option>Female</option>
                <option>Other</option>
            </select>

            <textarea name="current_address" placeholder="Current Address"></textarea>

            <input type="text" name="occupation" placeholder="Occupation">

            <input type="tel" name="mobile" placeholder="Mobile Number" required>

            <input type="email" name="email" placeholder="Email Address">

            <input type="text" name="aadhar" placeholder="Aadhar Number">

            <?php
            $transaction_id = "TXN" . date("YmdHis") . rand(1000, 9999);
            ?>

            <input
                type="hidden"
                name="transaction_id"
                value="<?php echo $transaction_id; ?>">

            <select name="account_status">
                <option value="ACTIVE">ACTIVE</option>
                <option value="INACTIVE">INACTIVE</option>
            </select>

            <input type="hidden" step="0.01" name="balance" value="0.00" readonly>

            <select name="account_type">
                <option value="SAVING">SAVING</option>
                <option value="CURRENT">CURRENT</option>
            </select>

            <input type="password" name="pin" maxlength="6" placeholder="6 Digit PIN" required>

            <button type="submit" name="save">
                Create Account
            </button>

        </form>

    </div>
    <?php require 'footer.php' ?>
</body>

</html>