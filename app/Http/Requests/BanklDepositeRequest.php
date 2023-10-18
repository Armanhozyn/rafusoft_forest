<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BanklDepositeRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'garden_id' => 'required',
            'range_lot_no_year' => 'required',
            'invoice_date' => 'required',
            'invoice_no' => 'required',
            'beneficiary_invoice_date' => 'required_with:beneficiary_invoice_no,beneficiary_share_amount',
            'beneficiary_invoice_no' => 'required_with:beneficiary_invoice_date,beneficiary_share_amount',
            'beneficiary_share_amount' => 'required_with:beneficiary_invoice_date,beneficiary_invoice_no',
            'tff_invoice_date' => 'required_with:tff_invoice_no,tff_share_amount',
            'tff_invoice_no' => 'required_with:tff_invoice_date,tff_share_amount',
            'tff_share_amount' => 'required_with:tff_invoice_date,tff_invoice_no',
        ];
    }
}
