<table class="table table-striped table-advance  table-bordered table-hover ">
    <tbody>
    <tr>
        <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Photo Title</th>
        <th style="background-color: #394A59; color: whitesmoke; text-align: center" >Album Title</th>
        <th style="background-color: #394A59; color: whitesmoke; text-align: center" >Photo Status</th>
        <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Photo Inserted By</th>
        <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Last Modified By</th>
        <th style="background-color: #394A59; color: whitesmoke; text-align: center"> Last Modified Date (d-m-Y)</th>
        <th style="background-color: #394A59; color: whitesmoke; text-align: center">  Action</th>
    </tr>
    <?php if (!empty($photo)){
        foreach ($photo as $photo){?>


            <tr align="center">
                <td><?php echo $photo->photoName?></td>
                <td><?php echo $photo->albumTitle?></td>

                <td>
                    <?php echo $photo->photoStatus?>
                </td>

                <td>
                    <?php echo $photo->insertedBy?>
                </td>

                <td>
                    <?php if ($photo->lastModifiedBy==""){echo NEVER_MODIFIED;}else{echo $photo->lastModifiedBy;} ?>

                </td>

                <td><?php if ($photo->lastModifiedDate==""){echo NEVER_MODIFIED;}
                    else
                    {
                        echo preg_replace("/ /","<br>",date('d-m-Y h:i A',strtotime($photo->lastModifiedDate)),1);

                    }
                    ?>

                </td>
                <td>

                    <div class="btn-group">
                        <a class="btn" href="<?php echo base_url("Admin/Photo/editPhotoView/")?><?php echo $photo->photoId ?>"><i class="icon_pencil-edit"></i></a>
                        <a class="btn" data-panel-id="<?php echo $photo->photoId ?>"  onclick="selectid(this)"><i class="icon_trash"></i></a>
                    </div>
                </td>

            </tr>


        <?php }
    }?>

    </tbody>
</table>
<!--<div class="pagination2" align="center">-->
<!--    <a href="#">--><?php //echo $links?><!--</a>-->
<!--</div>-->

<script>
    function selectid(x) {
        if (confirm("Are you sure you want to delete this Photo?")) {
            btn = $(x).data('panel-id');
            $.ajax({
                type:'POST',
                url:'<?php echo base_url("Admin/Photo/deletePhoto/")?>'+btn,
                data:{},
                cache: false,
                success:function(data) {
                    location.reload();
                }
            });
        }
    }
</script>