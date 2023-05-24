<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SideBar</title>
    <link rel="stylesheet" href="./css/style.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

</head>
<body>

    <nav class="menu-lateral">

        <div class="btn-expandir">
            <i class="bi bi-list" id="btn-exp"></i>
        </div><!--btn-expandir-->

        <ul>
            <li class="item-menu ativo">
                <a href="#">
                    <span class="icon"><i class="bi bi-house-door"></i></span>
                    <span class="txt-link">Home</span>
                </a>
            </li>
            <li class="item-menu">
                <a href="notas.html">
                    <span class="icon"><i class="bi bi-hand-thumbs-up"></i></span>
                    <span class="txt-link">Notas</span>
                </a>
            </li>
            <li class="item-menu">
                <a href="faltas.html">
                    <span class="icon"><i class="bi bi-x-circle-fill"></i></span>
                    <span class="txt-link">Faltas</span>
                </a>
            </li>
            <li class="item-menu">
                <a href="pendentes.html">
                    <span class="icon"><i class="bi bi-card-checklist"></i></span>
                    <span class="txt-link">Pendencias</span>
                </a>
            </li>
            <li class="item-menu">
                <a href="#">
                    <span class="icon"><i class="bi bi-person-circle"></i></span>
                    <span class="txt-link">Conta</span>
                </a>
            </li>
        </ul>

    </nav><!--menu-lateral-->

    <div class="content">
        <h2 class="welcome-message">Bem-vindo(a) ao Seu Portal</h2>
        <lord-icon
            src="https://cdn.lordicon.com/lupuorrc.json"
            trigger="loop"
            style="width:250px;height:250px">
        </lord-icon>
    </div>

    <script src="js/menu.js"></script>
</body>
</html>
