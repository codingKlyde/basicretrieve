<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=<di, initial-scale=1.0">


        <title>
            Harry Potter Books
        </title>

        
        <link href="index.css" rel="stylesheet">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.js" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css2?family=Oxygen&display=swap" rel="stylesheet">
    </head>





    <body>
        <div class="credits">
            Photo by 
                <a class="c-text" href="https://unsplash.com/@itsmaemedia?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">
                    Jess Bailey
                </a> 
            on 
                <a class="c-text" href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">
                    Unsplash
                </a> 
        </div>






        <div class="hp">
            <img class="hp-img" src="wordmark-hp.png">
        </div>










        <div class="wrapper">
            <h1 class="header"> 
                Harry Potter Books
            </h1>




            <form action="" method="POST">
                <table class="table">
                    <tr class="row">
                        <th class="column">
                            ISBN
                        </th>

                        <th class="column">
                            Title
                        </th class="column">

                        <th class="column">
                            Category
                        </th>

                        <th class="column">
                            Author
                        </th>

                        <th class="column">
                            Publisher
                        </th>
                        
                        <th class="column">
                            Year
                        </th>
                    </tr>





                <input class="botton" name="display" type="submit" value="SEARCH DATA"><br><br> 
            </form>








    

            <?php  
                $connection = mysqli_connect("localhost", "root", ""); 
                $db = mysqli_select_db($connection, 'library');





                if(isset($_POST['display']))
                    {
                        $query = "SELECT * FROM `books`";
                        $query_run = mysqli_query($connection, $query);
                        



                        while($row = mysqli_fetch_array($query_run))
                            {
                                ?>  
                                    <tr class="row">                       
                                        <td class="data">
                                            <?php echo $row['ISBN'] ?> 
                                        </td>

                                        <td class="data">
                                            <?php echo $row['Title'] ?>
                                        </td>

                                        <td class="data">
                                            <?php echo $row['Category'] ?>
                                        </td>

                                        <td class="data">
                                            <?php echo $row['Author'] ?>
                                        </td>

                                        <td class="data">
                                            <?php echo $row['Publisher'] ?>
                                        </td>

                                        <td class="data">
                                            <?php echo $row['Year'] ?>
                                        </td>
                                    </tr>
                                <?php
                            }
                    }
            ?>
        </div>
    </body>
</html>