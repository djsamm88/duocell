
        <li>
          <a href="<?php echo base_url()?>index.php/welcome">
            <i class="fa fa-home"></i> <span>Beranda</span>
          </a>
        </li>



        <?php 
        if($this->session->userdata('level')=='1')
        {
        ?>

        <li>
          <a href="#" onclick="eksekusi_controller('<?php echo base_url()?>index.php/admin/data_admin','Master Admin');return false;">
            <i class="fa fa-lock"></i> <span>Master Admin</span>
          </a>
        </li>



            
        <li>
          <a href="#" onclick="eksekusi_controller('<?php echo base_url()?>index.php/welcome/setting','setting  ');return false;">
            <i class="fa fa-lock"></i> <span> setting</span>
          </a>
        </li>




        <?php 
          }

          ?>

            
        <li>
          <a href="#" onclick="eksekusi_controller('<?php echo base_url()?>index.php/welcome/price_list','Price List ');return false;">
            <i class="fa fa-lock"></i> <span>Price List</span>
          </a>
        </li>


        <li>
          <a href="#" onclick="eksekusi_controller('<?php echo base_url()?>index.php/welcome/price_list_pasca','Price List ');return false;">
            <i class="fa fa-lock"></i> <span>Price List Pasca</span>
          </a>
        </li>


        <li>
          <a href="#" onclick="eksekusi_controller('<?php echo base_url()?>index.php/welcome/webhook_json','Webhook List ');return false;">
            <i class="fa fa-lock"></i> <span>Webhook Json</span>
          </a>
        </li>


        

      <li>
          <a href="#" onclick="eksekusi_controller('<?php echo base_url()?>index.php/welcome/kelola_data?tahun=<?php echo date('Y')-1?>','Kelola Data');return false;">
            <i class="fa fa-lock"></i> <span>Kelola Data</span>
          </a>
        </li>



        
        <li>
          <a href="#">
             &nbsp;
          </a>
        </li>


            
           