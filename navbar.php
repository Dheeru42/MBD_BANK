<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Segoe UI', sans-serif;
    }

    body {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        background: linear-gradient(135deg, #e8f5ff, #f5fff6);
    }

    /* Navbar */

    nav {
        background: linear-gradient(90deg, #0f172a, #1d4ed8);
        color: white;
        padding: 18px 8%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 5px 15px rgba(0, 0, 0, .15);
    }

    .logo {
        font-size: 28px;
        font-weight: bold;
        letter-spacing: 1px;
    }

    .logo i {
        color: #22c55e;
    }

    nav ul {
        display: flex;
        list-style: none;
        gap: 30px;
    }

    nav ul li a {
        color: white;
        text-decoration: none;
        transition: .3s;
        font-size: 17px;
    }

    nav ul li a:hover {
        color: #22c55e;
    }

    /* Main */

    main {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card {

        background: white;
        width: 450px;
        max-width: 90%;
        padding: 50px;
        border-radius: 20px;
        text-align: center;
        box-shadow: 0 15px 40px rgba(0, 0, 0, .12);

    }

    .card h1 {

        color: #1e3a8a;
        margin-bottom: 10px;

    }

    .card p {

        color: #666;
        margin-bottom: 35px;

    }

    .btn {

        display: block;
        width: 100%;
        padding: 18px;
        margin: 18px 0;
        text-decoration: none;
        border-radius: 12px;
        font-size: 20px;
        font-weight: bold;
        transition: .3s;
        color: white;

    }

    .create {

        background: linear-gradient(135deg, #2563eb, #1d4ed8);

    }

    .deposit {

        background: linear-gradient(135deg, #16a34a, #22c55e);

    }

    .btn:hover {

        transform: translateY(-5px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, .2);

    }

    /* Footer */

    footer {

        background: #0f172a;
        color: white;
        text-align: center;
        padding: 18px;

    }

    footer span {

        color: #22c55e;

    }

    @media(max-width:700px) {

        nav {

            flex-direction: column;
            gap: 15px;

        }

        nav ul {

            gap: 15px;
            flex-wrap: wrap;
            justify-content: center;

        }

        .card {

            padding: 35px;

        }

    }
</style>

<nav>

    <div class="logo">
        <i class="fa-solid fa-building-columns"></i>
        MBD Bank
    </div>

    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
    </ul>

</nav>