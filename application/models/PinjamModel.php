<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class PinjamModel extends CI_Model{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function lihat_pinjaman(){
		$this->db->select('*');
		$this->db->from('sigaka_pinjam');
		$this->db->join('sigaka_tenagahonorer', 'sigaka_tenagahonorer.tenagahonorer_id = sigaka_pinjam.pinjam_tenagahonorer_id');
		$this->db->order_by('tenagahonorer_date_created','DESC');
		$query = $this->db->get();
		return $query->result_array();
	}

	public function tambah_pinjaman($data){
		$this->db->where('pinjam_id', $id);
		$this->db->insert('sigaka_pinjam', $data);
		return $this->db->affected_rows();
	}

	public function update_pinjaman($id,$data){
		$this->db->where('pinjam_id', $id);
		$this->db->update('sigaka_pinjam', $data);
		return $this->db->affected_rows();
	}

}
