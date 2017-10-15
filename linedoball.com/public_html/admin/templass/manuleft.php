
<?php require_once '../config.php';?>
<nav class="side-navbar">
  <!-- Sidebar Header-->
  <div class="sidebar-header d-flex align-items-center">
    <div class="avatar"><img src="<?php echo PATH;?>/img/avatar-1.png" alt="..." class="img-fluid rounded-circle"></div>
    <div class="title">
      <h1 class="h4">Linedoball.com</h1>
      <p>ดูบอลออนไลน์</p>
    </div>
  </div>
  <!-- Sidebar Navidation Menus--><span class="heading">Main</span>
  <ul class="list-unstyled">
    <li class="active1"> <a href="<?php echo PATH;?>/indexs.php"><i class="icon-home"></i>หน้าหลัก</a></li>
      <li class="active1"><a href="#dashvariants" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>ประเภทรายการแข่งขัน </a>
      <ul id="dashvariants" class="collapse list-unstyled">
        <li><a href="<?php echo PATH;?>/page/leage.php">เพิ่มลีก-แก้ไขทีมในลีก</a></li>
        <li><a href="<?php echo PATH;?>/page/teames.php">เพิ่มทีม-แก้ไขทีม</a></li>
      </ul>
    </li>
    <li><a href="#dashvariants2" aria-expanded="false" data-toggle="collapse"> <i class="icon-interface-windows"></i>โปรแกรมถ่ายทอดสด </a>
      <ul id="dashvariants2" class="collapse list-unstyled">
        <li><a href="<?php echo PATH;?>/page/programelive.php">รายการถ่ายทอดสดทั้งหมด</a></li>
          <li><a href="<?php echo PATH;?>/page/programelive_add.php">เพิ่มรายการถ่ายทอดสด</a></li>
      </ul>

    </li>
    <li> <a href="ch.php"> <i class="icon-grid"></i>เพิ่ม ch </a></li>

    <li> <a href="<?php echo PATH;?>/login.html"> <i class="icon-interface-windows"></i>Login Page</a></li>
  </ul><span class="heading">Extras</span>
  <ul class="list-unstyled">
    <li> <a href="#"> <i class="icon-flask"></i>Demo </a></li>
    <li> <a href="#"> <i class="icon-screen"></i>Demo </a></li>
    <li> <a href="#"> <i class="icon-mail"></i>Demo </a></li>
    <li> <a href="#"> <i class="icon-picture"></i>Demo </a></li>
  </ul>
</nav>
