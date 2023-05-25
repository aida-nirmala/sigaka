<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class TenagaHonorerController extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
		$model = array('JabatanModel','TenagaHonorerModel');
		$helper = array('tgl_indo_helper');
		$this->load->model($model);
		$this->load->helper($helper);
		if (!$this->session->has_userdata('session_id')) {
			$this->session->set_flashdata('alert', 'belum_login');
			redirect(base_url('login'));
		}
    }

    public function index(){
    	$data = array(
    		'tenagahonorer' => $this->TenagaHonorerModel->lihat_tenagahonorer(),
			'jabatan' => $this->JabatanModel->lihat_jabatan(),
			'title' => 'Tenaga Honorer'
		);
		$this->load->view('templates/header',$data);
		$this->load->view('backend/tenagahonorer/index',$data);
		$this->load->view('templates/footer');
	}

	public function tambah(){
    	if (isset($_POST['simpan'])){
			$generate = substr(time(), 5);
			$id = 'PEG-' . $generate;
			$nama = $this->input->post('nama');
			$tempatLahir = $this->input->post('tempat_lahir');
			$tanggalLahir = $this->input->post('tanggal_lahir');
			$alamat = $this->input->post('alamat');
			$tanggalGabung = $this->input->post('tanggal_gabung');
			$gajiId = $this->input->post('jabatan');
			$nomorHp = $this->input->post('nomor_hp');
			$nomorRek = $this->input->post('nomor_rekening');
			$data = array(
				'tenagahonorer_id' => $id,
				'tenagahonorer_nama' => $nama,
				'tenagahonorer_tempat_lahir' => $tempatLahir,
				'tenagahonorer_tanggal_lahir' => $tanggalLahir,
				'tenagahonorer_alamat' => $alamat,
				'tenagahonorer_tanggal_gabung' => $tanggalGabung,
				'tenagahonorer_nomor_hp' => $nomorHp,
				'tenagahonorer_no_rekening' => $nomorRek,
				'tenagahonorer_jabatan_id' => $gajiId
			);
			$save = $this->TenagaHonorerModel->tambah_tenagahonorer($data);
			if ($save>0){
				$this->session->set_flashdata('alert', 'tambah_tenagahonorer');
				redirect('tenagahonorer');
			}
			else{
				redirect('tenagahonorer');
			}
		}
	}

	public function lihat($id){
		$data = $this->TenagaHonorerModel->lihat_satu_tenagahonorer($id);
		echo json_encode($data);
	}

	public function update(){
		if (isset($_POST['update'])){
			$id = $this->input->post('id');
			$nama = $this->input->post('nama');
			$tempatLahir = $this->input->post('tempat_lahir');
			$tanggalLahir = $this->input->post('tanggal_lahir');
			$alamat = $this->input->post('alamat');
			$tanggalGabung = $this->input->post('tanggal_gabung');
			$gajiId = $this->input->post('jabatan');
			$nomorHp = $this->input->post('nomor_hp');
			$nomorRek = $this->input->post('nomor_rekening');
			$data = array(
				'tenagahonorer_nama' => $nama,
				'tenagahonorer_tempat_lahir' => $tempatLahir,
				'tenagahonorer_tanggal_lahir' => $tanggalLahir,
				'tenagahonorer_alamat' => $alamat,
				'tenagahonorer_tanggal_gabung' => $tanggalGabung,
				'tenagahonorer_nomor_hp' => $nomorHp,
				'tenagahonorer_no_rekening' => $nomorRek,
				'tenagahonorer_jabatan_id' => $gajiId
			);
			$save = $this->TenagaHonorerModel->update_tenagahonorer($id,$data);
			if ($save>0){
				$this->session->set_flashdata('alert', 'update_tenagahonorer');
				redirect('tenagahonorer');
			}
			else{
				redirect('tenagahonorer');
			}
		}
	}

	public function hapus($id){
		$hapus = $this->TenagaHonorerModel->hapus_tenagahonorer($id);
		if ($hapus > 0){
			$this->session->set_flashdata('alert', 'hapus_tenagahonorer');
			redirect('tenagahonorer');
		}else{
			redirect('tenagahonorer');
		}
	}

	public function ajaxIndex(){
		echo json_encode($this->TenagaHonorerModel->lihat_tenagahonorer());
	}

}
