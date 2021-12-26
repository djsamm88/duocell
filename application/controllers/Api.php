<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends CI_Controller {
	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');				
		$this->load->helper('custom_func');
		
		$this->load->helper('text');
		date_default_timezone_set("Asia/jakarta");
		//$this->load->library('datatables');
		//$this->load->model('m_admin');

		header("Access-Control-Allow-Origin: *");
		header("Access-Control-Allow-Headers: *");
		header('Content-Type: application/json');

		$this->username 	= "rorazaoEQ5xo";
		$this->key 			= "dev-08ceccb0-572e-11ec-91c4-85d2e994b59b";
		
	}



	private function json_request($fullurl,$fields)
	{
			
			$jsonnya = json_encode($fields);
			
			
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_HEADER, 0);
			curl_setopt( $ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
			curl_setopt($ch, CURLOPT_VERBOSE, 1);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
			curl_setopt($ch, CURLOPT_FAILONERROR, 0);
			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
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

		echo json_encode($this->json_request($url,$fields));
		//echo json_encode($fields);

	}

	//https://api.digiflazz.com/v1/transaction


	public function price_list()
	{
		$url 				= "https://api.digiflazz.com/v1/price-list";	
		$fields['cmd']		= "prepaid";
		$fields['username']	= $this->username;
		$fields['sign']		= md5($this->username.$this->key."pricelist");

		echo json_encode($this->json_request($url,$fields));
		//echo json_encode($fields);

	} 

	
	public function transaction()
	{
		$url 				= "https://api.digiflazz.com/v1/price-list";	
		$fields['cmd']		= "prepaid";
		$fields['username']	= $this->username;
		$fields['sign']		= md5($this->username.$this->key."pricelist");

		echo json_encode($this->json_request($url,$fields));
		//echo json_encode($fields);

	}



}
