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
            'range_lot_no_year' => 'required',
            'fuel' => 'required',
            'bolli_count' => 'required',
            'tenderer_name_address' => 'required',
            'quoted_rate' => 'required',
            'total_number_of_trees' => 'required',
            'total_wood_amount' => 'required',

            // 'created_by' => 'required',

        ];
    }
}
