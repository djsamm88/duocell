<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');				
		$this->load->helper('custom_func');
		if ($this->session->userdata('id_admin')=="") {
			redirect(base_url().'index.php/login');
		}
		$this->load->helper('text');
		date_default_timezone_set("Asia/jakarta");
		//$this->load->library('datatables');
		$this->load->model('m_admin');
		$this->load->model('m_ikk');
		
		

		$this->username 	= "rorazaoEQ5xo";
		//$this->key 			= "dev-08ceccb0-572e-11ec-91c4-85d2e994b59b"; //development
		$this->key 			= "a92718e0-85ef-5649-8c72-023f63daf04f"; //produktion
		
		$this->proxy   		= "https://sibahanpe.pakpakbharatkab.go.id/digiflazz/proxy.php";
		$this->webhook      = "https://sibahanpe.pakpakbharatkab.go.id/digiflazz/webhook.php";
		$this->json_webhook = "https://sibahanpe.pakpakbharatkab.go.id/digiflazz/json_webhook.php";

		//$this->proxy   		= "http://hotabilardus.com/digiflazz/proxy.php";
		//$this->webhook      = "http://hotabilardus.com/digiflazz/json_webhook.php";
		//$this->json_webhook = "http://hotabilardus.com/digiflazz/webhook.php";

		//$this->proxy   		= "https://dev.tamorastore.com/proxy.php";
		//$this->webhook      = "https://dev.tamorastore.com/json_webhook.php";
		//$this->json_webhook = "https://dev.tamorastore.com/webhook.php";

		
	}


	public function struk()
	{
		$data['customer_no'] 	= $this->input->get('customer_no');
		$data['sn'] 			= $this->input->get('sn');

		$this->load->view('struk',$data);	
	}

	public function index()
	{

		$data['session'] = $this->session->userdata();
		
		$this->load->view('welcome_message',$data);
	}



	private function curl_json_request($fullurl,$fields)
	{
			
			$jsonnya = json_encode($fields);
			
			
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_POST, 1);
			curl_setopt($ch, CURLOPT_HEADER, 0);
			curl_setopt( $ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
			curl_setopt($ch, CURLOPT_VERBOSE, 1);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
			curl_setopt($ch, CURLOPT_FAILONERROR, 0);
			
			curl_setopt($ch, CURLOPT_URL, $fullurl);
			curl_setopt($ch, CURLOPT_POSTFIELDS,$jsonnya);
			
			$returned =  curl_exec($ch);
		
			return(json_decode($returned));
	}



	private function curl_proxy_request($fullurl,$fields)
	{
			
			$jsonnya = json_encode($fields);
			
			
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_POST, 1);
			curl_setopt($ch, CURLOPT_HEADER, 0);
			curl_setopt( $ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
			curl_setopt($ch, CURLOPT_VERBOSE, 1);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_URL, $fullurl);
			curl_setopt($ch, CURLOPT_POSTFIELDS,$jsonnya);
			
			$returned =  curl_exec($ch);
		
			return(json_decode($returned));
	}




	public function saldo()
	{
		$url 				= "https://api.digiflazz.com/v1/cek-saldo";	
		$fields['cmd']		= "deposit";
		$fields['username']	= $this->username;
		$fields['sign']		= md5($this->username.$this->key."depo");

		$x=json_encode($this->curl_json_request($url,$fields));
		//echo json_encode($fields);

		header('Content-Type: application/json');
		echo $x;


	}


	public function deposit()
	{
		$serialize = $this->input->post();

		$url 				= "https://api.digiflazz.com/v1/deposit";	
		//$fields['cmd']		= "deposit";
		$fields['username']	= $this->username;
		$fields['sign']		= md5($this->username.$this->key."deposit");
		
		$fields['amount'] 	= (int)hanya_nomor($serialize['amount']);
		$fields['Bank'] 	= $serialize['Bank'];
		$fields['owner_name'] 	= $serialize['owner_name'];


		$fields['url'] 			= "https://api.digiflazz.com/v1/deposit";		
		$proxy = $this->proxy;

		$x = json_encode($this->curl_proxy_request($proxy,$fields));
		//$x=json_encode($this->curl_json_request($url,$fields));
		//echo json_encode($fields);

		$tgl = date('Y-m-d H:i:s');
		$this->db->query("INSERT INTO tbl_topup SET respon='$x',tgl='$tgl'");

		header('Content-Type: application/json');
		echo $x;
		
		//var_dump($fields);
	
	}


	public function setting()
	{
		$tgl = date('Y-m-d');
		$q = $this->db->query("SELECT * FROM tbl_topup WHERE tgl LIKE '$tgl%' ORDER BY id DESC LIMIT 1");
		
		$qq = $q->result();
		$qqq = @$qq[0];

		$last_deposit['tgl'] = @$qqq->tgl;
		$last_deposit['respon'] = json_decode(@$qqq->respon);


		$this->load->view('setting',$last_deposit);	



	}



	public function price_list()
	{
		
		$url 				= "https://api.digiflazz.com/v1/price-list";	
		$fields['cmd']		= "prepaid";
		$fields['username']	= $this->username;
		$fields['sign']		= md5($this->username.$this->key."pricelist");

		$data['json']= ($this->curl_json_request($url,$fields));

		$this->load->view('price_list',$data);	

	}


	public function go_trx()
	{
		
		

		$serialize = $this->input->post();
				
		//var_dump($serialize);
		$url 				= "https://api.digiflazz.com/v1/transaction";			
		$fields['username']	= $this->username;
		$fields['sign']		= md5($this->username.$this->key.date('YmdHis')."_".$this->session->userdata('id_admin'));
		$fields['buyer_sku_code'] 	= $serialize['buyer_sku_code'];
		$fields['customer_no'] 		= $serialize['customer_no'];
		$fields['ref_id'] 			= date('YmdHis')."_".$this->session->userdata('id_admin');
		//$fields['testing'] 			= true;

		$fields['url'] 			= "https://api.digiflazz.com/v1/transaction";
		
		//$proxy = "https://sibahanpe.pakpakbharatkab.go.id/digiflazz/json.php";		
		//$proxy = "http://localhost/digiflazz/json.php";
		$proxy = $this->proxy;





		//header('Content-Type: application/json');
		$x = ($this->curl_proxy_request($proxy,$fields));
		$y = json_encode($x);
		$tgl = date('Y-m-d H:i:s');
		$this->db->query("INSERT INTO tbl_trx SET respon='$y',tgl='$tgl'");

		header('Content-Type: application/json');
		echo $y;

		//var_dump($x);
		
	}




	public function inquiry_pln()
	{
		
		

		$serialize = $this->input->post();
				
		//var_dump($serialize);
		$url 				= "https://api.digiflazz.com/v1/transaction";			
		$fields['commands'] 		= 'pln-subscribe';
		$fields['customer_no'] 		= $serialize['customer_no'];

		
		$fields['url'] 			= "https://api.digiflazz.com/v1/transaction";
		
		//$proxy = $url;
		//$proxy = "https://sibahanpe.pakpakbharatkab.go.id/digiflazz/json.php";
		//$proxy = "http://localhost/digiflazz/json.php";
		$proxy = $this->proxy;




		//header('Content-Type: application/json');
		$x = ($this->curl_proxy_request($proxy,$fields));
		$y = json_encode($x);
		$tgl = date('Y-m-d H:i:s');
		$this->db->query("INSERT INTO tbl_trx SET respon='$y' , tgl='$tgl'");

		header('Content-Type: application/json');
		echo $y;

		//var_dump($x);
		
	}





	public function inquiry_pasca()
	{
		
		

		$serialize = $this->input->post();
				
		//var_dump($serialize);
		$url 				= "https://api.digiflazz.com/v1/transaction";			
		$fields['username']	= $this->username;
		$fields['sign']		= md5($this->username.$this->key.date('YmdHis')."_".$this->session->userdata('id_admin'));
		$fields['commands'] 		= "inq-pasca";
		$fields['buyer_sku_code'] 	= $serialize['buyer_sku_code'];
		$fields['customer_no'] 		= $serialize['customer_no'];
		$fields['ref_id'] 			= date('YmdHis')."_".$this->session->userdata('id_admin');
		
		$fields['url'] 			= "https://api.digiflazz.com/v1/transaction";
		
		//$proxy = $url;
		//$proxy = "https://sibahanpe.pakpakbharatkab.go.id/digiflazz/json.php";		
		//$proxy = "http://localhost/digiflazz/json.php";
		$proxy = $this->proxy;


		//var_dump($fields);

		//die();
		//header('Content-Type: application/json');
		$x = ($this->curl_proxy_request($proxy,$fields));
		$y = json_encode($x);

		$tgl = date('Y-m-d H:i:s');
		$this->db->query("INSERT INTO tbl_trx SET respon='$y' , tgl='$tgl'");


		header('Content-Type: application/json');
		echo $y;

		
		
	}


	public function webhook_json()
	{

		$json_webhook = $this->json_webhook;		
		$data['json'] = ($this->curl_proxy_request($json_webhook,""));

		$this->load->view('webhook_json',$data);	
	}



	public function price_list_pasca()
	{
		
		$url 				= "https://api.digiflazz.com/v1/price-list";	
		$fields['cmd']		= "pasca";
		$fields['username']	= $this->username;
		$fields['sign']		= md5($this->username.$this->key.date('YmdHis')."pricelist");
		

		$data['json']= ($this->curl_json_request($url,$fields));

		$this->load->view('price_list_pasca',$data);	

	}

	

}
