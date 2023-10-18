<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class GardenRequest extends FormRequest
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
            'garden_information_id' => 'required',
            'bit_id' => 'required_without_all:sfpc_id',
            'sfpc_id' => 'required_without_all:bit_id',
            'project_id' => 'required',
            'creation_year' => 'required',
            'rotation' => 'required',
            'cut_year' => 'required',
            'garden_size' => 'required',
            'expiration_year' => 'required',
            'nursery_expense' => 'required',
            'creation_cost' => 'required',
            'beneficiary_male' => 'required',
            'beneficiary_female' => 'required',
            'contract_attachment' => 'nullable|mimes:jpg,jpeg,png,csv,txt,xlx,xls,pdf|max:20000',
            // 'parties' => 'required,""|json',


        ];
    }
}
