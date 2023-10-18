<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Garden Creation Report</title>
<style>
    /* Style the table */
table {
  width: 100%;
  border-collapse: collapse;
}

/* Style the table headers */
th {
  background-color: #f2f2f2;
  border: 1px solid #ddd;
  padding: 8px;
}

/* Style the table cells */
td {
  border: 1px solid #ddd;
  padding: 8px;
}

/* Style alternating rows */
tbody tr:nth-child(even) {
  background-color: #f9f9f9;
}

/* Style hover effect */
tbody tr:hover {
  background-color: #e1e1e1;
}

    </style>
</head>

<body>
    {{-- {{dd($list)}} --}}
	<table>
  <tbody>
    <tr>
      <td rowspan="3">ক্রমিক নং</td>
      <td rowspan="3">বন বিভাগের নাম</td>
      <td rowspan="3">জেলার নাম</td>
      <td rowspan="3">উপজেলার নাম</td>
      <td colspan="2">রেঞ্জ/এসএফএনটিসির নাম</td>
     
      <td colspan="2">বিট/এসএফপিসির নাম</td>
      <td rowspan="3">বাগানের অবস্থান</td>
      <td colspan="2">বাগান সৃজন ও কর্তনের সন</td>
      <td colspan="4">কর্তিত বাগানের স্থলে টিএফএফ এর অর্থায়নে সৃজিত বাগানের পরিমান</td>
      <td colspan="2">২য়/৩য় আবর্তে সৃজিত হয়নি এরুপ বাগানের পরিমান</td>

    </tr>
    <tr>

      <td rowspan="2">&nbsp;রেঞ্জ</td>
      <td rowspan="2">&nbsp;এসএফএনটিসি</td>
      <td rowspan="2">&nbsp; বিট</td>
      <td rowspan="2">এসএফপিসি&nbsp;</td>
      <td rowspan="2">&nbsp;সৃজনের সন</td>
      <td rowspan="2">&nbsp;কর্তনের সন</td>
      <td colspan="2">&nbsp;কর্তিত বাগান</td>
      <td colspan="2">&nbsp;সৃজিত বাগান</td>
      <td rowspan="2">&nbsp;হেক্টর</td>
      <td rowspan="2">&nbsp;কি.মি</td>
  
    </tr>
    <tr>
      <td>&nbsp;হেক্টর</td>
      <td>কি.মি.&nbsp;</td>
    
 
 
      <td>&nbsp;হেক্টর</td>
      <td>&nbsp;কি.মি.</td>


    </tr>

    @foreach($list as $row)
	      <tr>
      <td>{{ $row->id }}</td>
      <td>সামাজিক বন বিভাগ, দিনাজপুর</td>
      <td>{{ $row->union->district->name }}</td>
      <td>{{ $row->union->thana->name }}</td>
      <td>{{ @$row->range->name }}</td>
      <td></td>
      <td>{{ @$row->bit->name }}</td>
      <td>{{ @$row->sfpc->name }}</td>
      <td>{{ $row->location }}</td>
      <td>{{ $row->creation_year }}</td>
      <td>{{ $row->cut_year }}</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>{{ $row->harvested_amount }}</td>
      <td>{{ $row->harvested_amount }}</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>

    @endforeach
	  
	      {{-- <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr> --}}
  </tbody>
</table>

</body>
</html>
