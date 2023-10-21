<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RangeRequest extends FormRequest
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
            'district_id' => 'required|max:255',
            'name' => 'required|max:255',
            'name_english' => 'required|max:255',
            'office_head_designation' => 'required|max:255'
        ];
    }
}
