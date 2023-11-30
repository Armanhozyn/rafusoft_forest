<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class WoodLotRequest extends FormRequest
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
            'division_group_no_year' => 'required',
            'range_lot_no_year' => 'required|unique:wood_lots',
            'tree_type' => 'required',
            'tree_count' => 'required',
            'wood_amount_sft' => 'required',
            'fuel' => 'required',
            'bolli_count' => 'required',
            'tenderer_name_address' => 'required',
            'quoted_rate' => 'required',
            'advance_details' => 'required',
            'advance_amount' => 'required',
            'collateral_details' => 'required',
            'collateral_amount' => 'required',

        ];
    }
}
