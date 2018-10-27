<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lab2</title>
    <link rel="stylesheet" type="text/css" href="index_styles.css"/>

    <script type="text/javascript" src="//code.jquery.com/jquery-2.1.0.js"></script>
    <script type="text/javascript" src="myscript.js"></script>

    <meta charset="UTF-8">
</head>

<body>
<header>
    <table width=100%>
        <tr>
            <td class="variant">Вариант: 19194</td>
            <td class="group">Группа: P3201</td>
        </tr>
        <tr>
            <td class="autor">Анохин Игорь Игоревич</td>
            <td class="autor">Федотова Маргарита Михайловна</td>
        </tr>
    </table>
</header>

<table width="100%">
    <tr>
        <td width="30%">
            <div class="flex-container">
                <form action="controller" method="post">
                    <div>
                        <fieldset>
                            <legend>Место для вашей рекламы</legend>
                            <p>
                                Здесь может быть размещена ваша реклама
                            </p>
                        </fieldset>
                    </div>
                    <div>
                        <fieldset>
                            <legend>Координата Х</legend>
                                <select id="X" name="X" class="parameter">
                                    <option value="" selected disabled>Выберите X</option>
                                    <option value="-3">-3</option>
                                    <option value="-2">-2</option>
                                    <option value="-1">-1</option>
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                        </fieldset>
                    </div>
                    <div>
                        <fieldset>
                            <legend>Координата Y</legend>
                            <label>
                                <p align="center">Диапазон: (-5..5)</p>
                                <input id="Y" class="parameter" type="text" name="Y"
                                       autocomplete="off" placeholder="Цифирки"
                                       oninput="return input_Y(this.value)"
                                       onchange="return change_Y(this)"/>
                            </label>
                        </fieldset>
                    </div>
                    <div>
                        <fieldset>
                            <legend>Еще одно место для вашей рекламы</legend>
                            <p>
                                Здесь может быть размещена ваша реклама
                            </p>
                        </fieldset>
                    </div>
                    <div>
                        <fieldset>
                            <legend>Параметр R</legend>
                            <label>
                                <select id="radius" name="R" class="parameter"
                                        oninput="return redraw()">
                                    <option value="" selected disabled>Выберите R</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </label>
                        </fieldset>
                    </div>

                    <div>
                        <input id="magic_button" class="parameter"
                               style="padding: 3%; margin-right: 2%; margin-top: 3%"
                               type="submit" value="Отправить"
                               disabled="disabled">
                </div>
                </form>
            </div>

        </td>

        <td width="70%">
            <canvas id="myCanvas" height="500%" width="1000%"">
            </canvas>
            <script>
                draw_function()
            </script>
        </td>
    </tr>
</table>
</body>
</html>

