<!DOCTYPE html>
<html lang="en">
<head>
    <?php include('head.php') ?>
</head>
<style>
    .pagination2 {
        letter-spacing: 15px;
    }

</style>
<body>
<!-- container section start -->
<section id="container" class="">
    <!--header start-->
    <?php include ('topNavigation.php')?>
    <!--header end-->

    <!--sidebar start-->
    <?php include('leftNavigation.php') ?>
    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-table"></i> Event</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="<?php echo base_url()?>Admin/Home">Home</a></li>
                        <li><i class="fa fa-table"></i>Event</li>
                        <li><i class="fa fa-th-list"></i>Manage Event</li>
                    </ol>
                </div>
            </div>
            <!-- page start-->


            <?php if ($this->session->flashdata('errorMessage')!=null){?>
                <div class="alert alert-danger" align="center"><strong><?php echo $this->session->flashdata('errorMessage');?></strong></div>
            <?php }
            elseif($this->session->flashdata('successMessage')!=null){?>
                <div class="alert alert-success" align="center"><strong><?php echo $this->session->flashdata('successMessage');?></strong></div>
            <?php }?>

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <b>Manage Event</b>
                            <span align="">
                                <a href="<?php echo base_url()?>Admin/Event/newEvent"><button class="btn btn-sm" style="float: right; height: 26px; margin-top: 3px; background-color: #00A8FF;color: whitesmoke;"><b>New Event</b></button></a>
                            </span>
                        </header>
                        <div class="panel-body table  ">
                            <table class="table table-striped table-advance  table-bordered table-hover">
                                <tbody>
                                <tr>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center; width: 15%"> Event Title</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Event Start</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Event End</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Event Location</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Event Type</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Status</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Inserted By</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Last Modified By</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Last Modified Date(d-m-Y)</th>
                                    <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Action</th>
                                </tr>

                                <?php if (!empty($events)){
                                    foreach ($events as $events){?>

                                        <tr align="center">
                                            <td>
                                                <?php echo $events->eventTitle?>
                                            </td>

                                            <td>
                                                <?php

                                                echo preg_replace("/ /","<br>",date('d-m-Y h:i A',strtotime($events->eventStartDate)),1);
                                                ?>

                                            </td>

                                            <td>
                                                <?php
                                                echo preg_replace("/ /","<br>",date('d-m-Y h:i A',strtotime($events->eventEndDate)),1);
                                                ?>


                                            </td>

                                            <td>
                                                <?php echo $events->eventLocation?>
                                            </td>

                                            <td>
                                                <?php echo $events->eventType?>

                                            </td>

                                            <td>
                                                <?php echo $events->eventStatus?>
                                            </td>

                                            <td>
                                                <?php echo $events->insertedBy?>

                                            </td>

                                            <td>
                                                <?php if ($events->lastModifiedBy==""){echo"Never Modified";}else{echo $events->lastModifiedBy;} ?>
                                            </td>

                                            <td>
                                                <?php if ($events->lastModifiedDate==""){echo NEVER_MODIFIED;}
                                                else
                                                {
                                                    echo preg_replace("/ /","<br>",date('d-m-Y h:i A',strtotime($events->lastModifiedDate)),1);

                                                }
                                                ?>

                                            </td>

                                            <td>

                                                <div class="btn-group">
                                                    <a class="btn" href="<?php echo base_url("Admin/Event/editEventView/")?><?php echo $events->eventId ?>"><i class="icon_pencil-edit"></i></a>
                                                    <a class="btn" data-panel-id="<?php echo $events->eventId ?>"  onclick="selectid(this)"><i class="icon_trash"></i></a>
                                                </div>
                                            </td>

                                        </tr>
                                    <?php }
                                } ?>



                                </tbody>
                            </table>

                            <div class="pagination2" align="center">
                                <a href="#"><?php echo $links?></a>
                            </div>

                        </div>
                        <div id="edit"></div>
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

<?php include('js.php') ?>
</body>
</html>
<script>
    function selectid(x) {
        if (confirm("Are you sure you want to delete this Event?")) {
            btn = $(x).data('panel-id');
            $.ajax({
                type:'POST',
                url:'<?php echo base_url("Admin/Event/deleteEvent/")?>'+btn,
                data:{},
                cache: false,
                success:function(data) {

                    location.reload();

                }
            });
        }
        else {
            location.reload();
        }
    }
</script>