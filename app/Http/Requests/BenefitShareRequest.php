<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BenefitShareRequest extends FormRequest
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
            'office_order_no' => 'required',
            'payment_date' => 'required',
            'benefit_male' => 'required',
            'benefit_female' => 'required'
        ];
    }
}
