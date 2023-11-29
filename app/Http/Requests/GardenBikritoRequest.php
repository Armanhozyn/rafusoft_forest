<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class GardenBikritoRequest extends FormRequest
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
            'bikrito_bagan_shon' => 'required',
            'dorpotro_biggopti_no' => 'required',
            'bikrito_date' => 'required',
            'total_lot_count' => 'required'
        ];
    }
}
