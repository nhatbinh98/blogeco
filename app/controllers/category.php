<?php
/**
 * 
 */
class category extends Dcontroller
{
	
	public function __construct()
	{	$data = array();
		$message = array();
		parent::__construct();
	}
	public function list_category()
	{
		$this->load->view('header');
		// $homemodel='tbl_product';
		
		$categorymodel = $this->load->model('categorymodel');
		$table_category_product='tbl_category_product';
		$data['category'] = $categorymodel->category($table_category_product);
		$this->load->view('category', $data);
		$this->load->view('footer');
	}
	public function catebyid()
	{
		$this->load->view('header');
		$categorymodel = $this->load->model('categorymodel');
		$id='2';
		$table_category_product='tbl_category_product';
		$data['categorybyid'] = $categorymodel->categorybyid($table_category_product,$id);
		$this->load->view('categorybyid', $data);
		$this->load->view('footer');
	}
	public function addcategory(){
		$this->load->view("addcategory");
	}
	public function insertcategory(){		
		$categorymodel = $this->load->model('categorymodel');
		$title=$_POST['title'];
		$desc=$_POST['desc'];

		$table_category_product='tbl_category_product';
		$data = array(
			'title_category_product' => $title,
			'desc_category_product' => $desc
			 );
		$result = $categorymodel->insertcategory($table_category_product,$data);
		if($result==1){
			$message['msg']="Thêm dữ liệu thành công";
		}else{
			$message['msg']="Thêm dữ liệu thất bại";
		}
		$this->load->view("addcategory",$message);
		
	}
	public function updatecategory(){		
		$categorymodel = $this->load->model('categorymodel');
		// $title=$_POST['title'];
		// $desc=$_POST['desc'];

		$table_category_product='tbl_category_product';
		$id = 3;
		$cond="tbl_category_product.id_category_product='$id'";
		$data = array(
			'title_category_product' => 'Macbook Air',
			'desc_category_product' => 'Macbook Air giá tốt'
			 );
		$result = $categorymodel->updatecategory($table_category_product,$data,$cond);
		if($result==1){
			echo "Cập nhật dữ liệu thành công";
		}else{
			echo "Cập nhật dữ liệu thất bại";
		}
		
	}
	public function deletecategory(){		
		$categorymodel = $this->load->model('categorymodel');
		// $title=$_POST['title'];
		// $desc=$_POST['desc'];

		$table_category_product='tbl_category_product';
		// $id = 12;
		$cond="id_category_product=15";
		
		$result = $categorymodel->deletecategory($table_category_product,$cond);
		if($result==1){
			echo "Xóa dữ liệu thành công";
		}else{
			echo "Xóa dữ liệu thất bại";
		}
		
	}
	
}


?>