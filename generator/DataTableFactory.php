<?php

$payment = [
    "bohi_number",
    "roshid_number",
    "date",
    "holding_number",
    "gram_name",
    "reciever_name",
    "father_or_husband_name",
    "account_book",
    "collection_of_dues",
    "date_and_time_of_collecting_money",
    "hal_adai",
    "total_amount_deposit_cash_book",
    "mode_of_payment",
    "SMS"
];

$banijjik = [
    "name_of_tax_officer",
    "father_or_husband_name",
    "gram_name",
    "moholla",
    "ward_number",
    "nid_birth_number",
    "mobile_number",
    "holding_number",
    "type_and_number_of_houses",
    "owner_or_rent",
    "previous_due",
    "annual_assessment",
    "yearly_tax_amount",
    "type_of_business"
];

$abashik_assesment = [
    "name_of_tax_officer",
    "father_or_husband_name",
    "gram_name",
    "moholla",
    "ward_number",
    "nid_birth_number",
    "mobile_number",
    "holding_number",
    "beneficiary",
    "amount_of_land",
    "number_of_family_member_male_prapto",
    "number_of_family_member_male_oprapto",
    "number_of_family_member_female_prapto",
    "number_of_family_member_female_oprapto",
    "occupation",
    "Tubewell",
    "latrin",
    "type_and_number_of_houses",
    "type_of_business",
    "previous_due",
    "annual_assessment",
    "yearly_tax_amount"
];

$tax_bill = [
    "serial_number",
    "holding_number",
    "tax_payer_name",
    "father_or_husband_name",
    "ward_number",
    "bill_address",
    "bill_issue_date",
    "last_date_of_submission",
    "bank_name_of_collecting_tax",
    "money_received",
    "money_received_in_words",
    "bank_or_up_sheel"
];
$union = [
    "name",
    "upozila_thana",
    "zila"
];
$user = [
    "name",
    "upozila_thana_id",
    "email",
    "password"
];
$upozila_thana = [
    "name"
];


$dataArray = $upozila_thana;

$data = "department";

$fh = fopen("./view/dataTable.php", 'w') or die("can't open file");
$stringData = <<<CODE
                { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
            CODE;
for ($i=0; $i < count($dataArray); $i++) {
    $lang = "lang.";

    $formName = $dataArray[$i];
    $formNameLang = $lang . $formName;
    $UFormName = ucfirst($dataArray[$i]);



    $stringData .= <<<CODE
            { data: '$formName', name: '$formName' },
    CODE;
}

fwrite($fh, $stringData);

fclose($fh);
?>
