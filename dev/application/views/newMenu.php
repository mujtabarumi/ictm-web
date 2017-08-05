<!DOCTYPE html>
<html lang="en">
<head>
    <?php include ('head.php') ?>
</head>

<body>
<!-- container section start -->
<section id="container" class="">
    <!--header start-->
    <?php include ('header.php')?>
    <!--header end-->

    <!--sidebar start-->
    <?php include ('sidebar.php')?>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-files-o"></i> New &nbsp Menu</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                        <li><i class="icon_document_alt"></i>Menu</li>
                        <li><i class="fa fa-files-o"></i>Create a new Menu</li>
                    </ol>
                </div>
            </div>
            <!-- Form validations -->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Menu
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="form-validate form-horizontal" id="feedback_form" method="get" action="">
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Menu Name <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="fullname" minlength="5" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-lg-2" for="inputSuccess">Menu Type <span class="required">*</span></label>
                                        <div class="col-lg-10">

                                            <select class="form-control m-bot15" name="menuType" id="menuType" onchange="selectid(this)">
                                                <option selected>Select Menu Type</option>
                                                <option>Top</option>
                                                <option>MainMenu</option>
                                                <option>KeyInfo</option>
                                                <option>QuickLink</option>
                                                <option>ImportantLink</option>
                                                <option>Bottom</option>
                                            </select>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-lg-2" for="inputSuccess">Level <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <select class="form-control m-bot15" name="menuName" id="menuName">
                                                <option selected>Select Menu Type</option>
<!--                                                <option>New Menu</option>-->
<!--                                                <option>About</option>-->
<!--                                                <option>Course</option>-->
<!--                                                <option>Addmission</option>-->
<!--                                                <option>College Life</option>-->
<!--                                                <option>News & Events</option>-->
                                            </select>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-2" for="inputSuccess">Page</label>
                                        <div class="col-lg-10">
                                            <select class="form-control m-bot15" name="level">
                                                <option>page</option>
                                                <option>About</option>
                                                <option>Course</option>
                                                <option>Addmission</option>
                                                <option>College Life</option>
                                                <option>News & Events</option>
                                            </select>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-lg-2" for="inputSuccess">Status</label>
                                        <div class="col-lg-10">
                                            <select class="form-control m-bot15" name="level">
                                                <option>Active</option>
                                                <option>InActive</option>
                                            </select>


                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <div class="col-lg-10">
                                        <input class="btn btn-success" type="submit" style="margin-left: 180px">
                                            <input class="btn btn-close" type="reset" >
                                        </div>
                                    </div>

                                    </div>
                                </form>
                            </div>

                        </div>
                    </section>
                </div>
            </div>

            <!-- page end-->
        </section>
    </section>
    <!--main content end-->
<div class="text-right wrapper">
    <div class="credits">
        <a href="#">Icon College</a> by <a href="#">A2N</a>
    </div>
</div>

</section>
<!-- container section end -->

<?php include ('js.php')?>


</body>
</html>
<script>

    function selectid(x) {

        var btn =  document.getElementById("menuType").value;
        //alert(btn);
        if (btn == "Select Menu Type"){

            alert("Select a valid Menu Type");
        }
        else
        {

            $.ajax({
                type:'POST',
                url:'<?php echo base_url("Admin_Menu/getMenuLevel/")?>'+btn,
                data:{'type': btn},
                cache: false,
                success:function(data) {

                    document.getElementById("menuName").innerHTML = data;
                    //alert(data);


                }

            });
        }
    }

</script>