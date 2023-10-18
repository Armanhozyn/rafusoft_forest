<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
class PaymentRequest extends FormRequest
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
            'range_lot_no_year' => 'required|integer',
            'money_collection_slip_no' => 'required',
            'collection_amount' => 'required',
            'money_collection_date' => 'required',

            'money_deposit_slip_no' => [
                Rule::requiredIf(function () {
                    return filled($this->input('money_deposit'));
                }),
            ],
            'money_deposit' => [
                Rule::requiredIf(function () {
                    return filled($this->input('money_deposit_slip_no'));
                }),
            ],
        ];
    }
}
