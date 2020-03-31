<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data pelanggan</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data pelanggan</h2>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="varchar">Nama pelanggan</label>
            <input type="text" class="form-control" required name="nama_pelanggan" id="nama_pelanggan" placeholder="Nama pelanggan" value="<?php echo $nama_pelanggan; ?>" />
        </div>

        <div class="form-group">
            <label for="varchar">alamat </label>
            <input type="text" class="form-control" required name="alamat" id="alamat" placeholder="alamat" value="<?php echo $alamat; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">no_telp</label>
            <input type="text" class="form-control" required name="no_telp" id="no_telp" placeholder="no_telp" value="<?php echo $no_telp; ?>" />
        </div>
        <input type="hidden" name="id_pelanggan" value="<?php echo $id_pelanggan; ?>" /> 
        <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
        <a href="<?php echo site_url('pelanggan') ?>" class="btn btn-default">Cancel</a>
    </form>

                </div>
                </div>
                </div>
                </div>
           
