<html>
<head>
	
<body>
		
	<h2> List Buku Tamu </h2>
	<hr>

	<table>
		<tr>
			<th>ID</th>
			<th>Nama</th>
			<th>Email</th>
		</tr>

		<?php
		if(!empty($repository)):
			$no=1;
			foreach ($repository as $repository):
		?>
		<tr>
			<td><?php echo $repository['id'];?></td>
			<td><?php echo $repository['nama_barang'];?></td>
			<td><?php echo $repository['jenis_barang'];?></td>
			<td>
				<a href="<?php echo site_url('web/detail/'.$repository['id']);?>">
					Lihat
				</a> | 
				<a href="<?php echo site_url('web/ubah/'.$repository['id']);?>">
					Ubah
				</a> | 
				<a href="<?php echo site_url('web/hapus/'.$repository['id']);?>">
					Hapus
				</a>
			</td>
		</tr>
		<?php
			$no++;
			endforeach;
		endif;
		?>
	</table>


	<br>
	<h2>Tambah Data</h2>
	<hr>
	<form action="" method="post">
	<table>
		<tr>
			<td>Nama</td>
			<td>:</td>
			<td><input type="text" name="nama_barang"></td>
		</tr>

		<tr>
			<td>Jenis Barang</td>
			<td>:</td>
			<td><input type="text" name="jenis_barang"></td>
		</tr>

		<tr>
			<td colspan="3">
				<center>
					<input type="submit" name="simpan" value="Simpan">
				</center>
			</td>
		</tr>
		
	</table>
	</form>

</body>

</head>
</html>