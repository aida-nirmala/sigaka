<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class LaporanModel extends CI_Model{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function lihat_laporan($tanggal){
		$this->db->select('*');
		$this->db->from('sigaka_gaji');
		$this->db->join('sigaka_tenagahonorer', 'sigaka_tenagahonorer.tenagahonorer_id = sigaka_gaji.gaji_tenagahonorer_id');
		$this->db->join('sigaka_jabatan', 'sigaka_jabatan.jabatan_id = sigaka_tenagahonorer.tenagahonorer_jabatan_id');
		$this->db->like('gaji_tanggal',$tanggal);
		$this->db->where('gaji_status','sudah');
		$this->db->order_by('gaji_tanggal','DESC');
		$query = $this->db->get();
		return $query->result_array();
	}
}