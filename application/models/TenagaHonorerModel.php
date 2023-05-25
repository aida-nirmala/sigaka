<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class TenagaHonorerModel extends CI_Model{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function lihat_tenagahonorer(){
		$this->db->select('*');
		$this->db->from('sigaka_tenagahonorer');
		$this->db->join('sigaka_jabatan', 'sigaka_jabatan.jabatan_id = sigaka_tenagahonorer.tenagahonorer_jabatan_id');
		$this->db->order_by('tenagahonorer_date_created','DESC');
		$query = $this->db->get();
		return $query->result_array();
	}

	public function tambah_tenagahonorer($data){
		$this->db->insert('sigaka_tenagahonorer', $data);
		return $this->db->affected_rows();
	}

	public function lihat_satu_tenagahonorer($id){
		$this->db->select('*');
		$this->db->from('sigaka_tenagahonorer');
		$this->db->join('sigaka_jabatan', 'sigaka_jabatan.jabatan_id = sigaka_tenagahonorer.tenagahonorer_jabatan_id');
		$this->db->where('tenagahonorer_id',$id);
		$query = $this->db->get();
		return $query->row_array();
	}

	public function update_tenagahonorer($id,$data){
		$this->db->where('tenagahonorer_id',$id);
		$this->db->update('sigaka_tenagahonorer',$data);
		return $this->db->affected_rows();
	}

	public function hapus_tenagahonorer($id){
		$this->db->where('tenagahonorer_id', $id);
		$this->db->delete('sigaka_tenagahonorer');
		return $this->db->affected_rows();
	}
}
