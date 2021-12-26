
<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1 id="judul">
        Selamat datang di Sistem LPPD
        
      </h1>      
    </section>

    <!-- Main content -->
    <section class="content container-fluid" id="t4_isi">

      <!--------------------------
        | Your Page Content Here |
        -------------------------->    
      
    
    <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Sistem Informasi Manajemen LPPD </h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>


        

        <div class="box-body">
              

            Informasi Login:
            <pre>
              <?php 
                foreach($this->m_admin->m_data_admin_by_id($this->session->userdata('id_admin')) as $ses)
                {
                  echo "<br>";
                  echo "$ses->nama_admin <br>";
                  echo "$ses->OPD <br>";
                  
                  echo level($session['level']);
                }
              ?>
            </pre>
            
            </div>
          </div>

              

</section>
    <!-- /.content -->
