
<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data activity</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Activity</h2>
                  <div class="row">

                <div class="card">
                  <div class="col-md-4">
                
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-right">
                <form action="<?php echo site_url('activity/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" name="q" placeholder="cari nama activity" value="<?php echo $q; ?>">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                    <a href="<?php echo site_url('activity'); ?>" class="btn btn-default">Reset</a>
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                    </div>
                </form>
                </div>
                </div>

                    <div class="col-md-12">
                    <table class="table table-bordered" style="margin-bottom: 10px">
        <tr>
        <th>No</th>
        <th><center> Tanggal</center> </th>
        <th><center>Activity</center></th>
        <th><center>Action</center> </th>
        </tr>
        <?php 
					foreach ($activity_data as $activity) {
                        ?>
                <tr>
            <td width="80px"><?php echo ++$per_page ?></td>
            <td><?php echo $activity->tgl_activity ?></td>
            <td><?php echo $activity->keterangan ?></td> 
            
            <td>
                <?php 
               
               echo anchor(site_url('activity/delete/'.$activity->id_activity),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
                ?>
            </td>
        </tr>
                <?php
            }
            ?>
        </table>
        <div class="row">
            <div class="col-md-6">
                <a href="dashboard" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
                
        </div>
            <div class="col-md-6 text-right">
                <?php echo $pagination ?>
            </div>
        </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
