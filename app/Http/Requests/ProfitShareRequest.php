<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProfitShareRequest extends FormRequest
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
            'garden_creation_year' => 'required|digits:4',
            'garden_id' => 'required|string',
            'office_order_date' => 'required|date',
            'office_order_no' => 'required|string',
            'beneficiary_male' => 'required_with:beneficiary_female,beneficiary_profit_share|integer|nullable',
            'beneficiary_female' => 'required_with:beneficiary_male,beneficiary_profit_share|integer|nullable',
            'beneficiary_profit_share' => 'required_with:beneficiary_male,beneficiary_female|integer|nullable',
            'land_owner_profit_share' => 'integer|nullable',
            'union_parishadh_profit_share' => 'integer|nullable',
            'tff_profit_share' => 'integer|nullable',
        ];
    }
}
