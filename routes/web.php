<?php

use App\Garden;
use App\Http\Controllers\AjaxController;
use App\Http\Controllers\GardenInformationController;
use App\Http\Controllers\ReportController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect()->route('home');
});

Auth::routes(['verify' => true]);


Route::group(['middleware' => ['auth', 'verified', 'setLanguage']], function () {

    Route::get('/home', 'HomeController@index')->name('home');

    Route::get('/components', function () {
        return view('components');
    })->name('components');


    Route::resource('users', 'UserController');

    Route::get('/profile/{user}', 'UserController@profile')->name('profile.edit');

    Route::post('/profile/{user}', 'UserController@profileUpdate')->name('profile.update');

    Route::resource('roles', 'RoleController')->except('show');

    Route::resource('permissions', 'PermissionController')->except(['show', 'destroy', 'update']);

    Route::resource('category', 'CategoryController')->except('show');

    Route::resource('post', 'PostController');

    Route::get('/activity-log', 'SettingController@activity')->name('activity-log.index');

    Route::get('/settings', 'SettingController@index')->name('settings.index');

    Route::post('/settings', 'SettingController@update')->name('settings.update');

    Route::resource('country', 'CountryController')->except('show');
    Route::resource('bit', 'BitController')->except('show');
    Route::resource('district', 'DistrictController')->except('show');
    Route::resource('land_owner', 'LandOwnerController')->except('show');
    Route::resource('beneficiary', 'BeneficiaryController')->except('show');
    Route::resource('range', 'RangeController')->except('show');
    Route::resource('union', 'UnionParishadController')->except('show');
    Route::resource('paymenthistory', 'PaymentHistoryController');
    Route::resource('projects', 'ProjectController');
    Route::resource('garden-information', 'GardenInformationController');
    Route::resource('forest_type', 'Forest_TypeController');
    Route::resource('country_division', 'CountryDivisionController');
    Route::resource('thana', 'ThanaController');
    Route::resource('sfpc', 'SfpcController')->except('show');
    Route::resource('sfpc', 'SfpcController')->except('show');

    Route::get('/lot-payment', 'WoodLotController@lot_payment')->name('lot_payment');
    Route::get('/all-lot-payment', 'WoodLotController@all_lot_payment')->name('all_lot_payment');
    Route::get('/woodlot/collect_money/{range_lot_year_no}', 'WoodLotController@collect_money')->name('woodlot.collect_money');

    //garden_bikrito
    Route::get('/garden-bikrito', 'GardenBikritoController@garden_bikrito')->name('garden.bikrito');
    Route::get('/garden-bikrito-list', 'GardenBikritoController@garden_bikrito_list')->name('garden.bikrito.list');
    Route::get('/garden-sell-create/{garden_id}', 'GardenBikritoController@garden_sell_create')->name('garden.sell.creat');
    Route::post('/garden-sell-store', 'GardenBikritoController@garden_sell_store')->name('garden.sell.store');


    //woodlot_deposite
    Route::get('/woodlot-deposite', 'WoodlotDepositeController@woodlot_deposite')->name('woodlot.deposite');
    Route::get('/woodlot-diposite-list', 'WoodlotDepositeController@woodlot_deposite_list')->name('woodlot.deposite.list');
    Route::get('/woodlot-diposite-create/{lot_id}', 'WoodlotDepositeController@woodlot_deposite_create')->name('woodlot.diposite.create');
    Route::post('/woodlot-diposite-store', 'WoodlotDepositeController@woodlot_deposite_store')->name('woodlot.diposite.store');

    //garden_bikrito
    Route::get('/benefit-share', 'BenefitShareController@benefit_share')->name('benefit.share');
    Route::get('/benefit-share-list', 'BenefitShareController@benefit_share_list')->name('benefit.share.list');
    Route::get('/benefit-share-create/{garden_id}', 'BenefitShareController@benefit_share_create')->name('benefit.share.creat');
    Route::post('/benefit-share-store', 'BenefitShareController@benefit_share_store')->name('benefit.share.store');


    Route::get('media', function () {
        return view('media.index');
    })->name('media.index');

    Route::prefix('garden')->name('garden.')->group(function () {
        Route::get('test', function () {
            return 'Hello Test';
            // Matches The "/admin/users" URL
        });

        Route::resource('/', 'GardenController')->except('show')->names([
            'create' => 'create',
            'index' => 'index',

        ]);

        Route::get('attachment-submit', 'GardenController@attachmentSubmit');

        Route::resource('woodlot', 'WoodLotController')->except('show')->names([
            'create' => 'woodlot.create',
            'index' => 'woodlot.index',
            // 'payment' => 'woodlot.payment',
        ]);


        Route::post('wood-lot-ajax-save', 'WoodLotController@save_ajax');
        Route::get('woodlot/payment', 'WoodLotController@payment')->name('woodlot.payment');
        Route::post('woodlot/payment', 'WoodLotController@payment_submit')->name('woodlot.payment_submit');

        Route::get('woodlot/bank-deposit', 'WoodLotController@bank_deposit')->name('woodlot.bank_deposit');
        Route::post('woodlot/bank-deposit', 'WoodLotController@bank_deposit_submit')->name('woodlot.bank_deposit_submit');

        Route::resource('profit-share', 'ProfitShareController')->except('show')->names([
            'create' => 'profit_share.create',
            'index' => 'profit_share.index',
        ]);
        Route::post('profit-share-ajax-save', 'ProfitShareController@save_ajax');
    });

    Route::prefix('report')->name('report.')->group(function () {
        Route::get('index', [ReportController::class, 'index']);

        Route::get('garden-creation', [ReportController::class, 'gardenCreationReport']);
    });

    Route::get('species-info', [WoodLotController::class, 'ajaxSpeciesInfo']);
    Route::get('ajax/serials', [WoodLotController::class, 'ajaxSerialList']);
    Route::get('ajax/gardens', [WoodLotController::class, 'ajaxGardenList']);

    Route::get('ajax/upazilla-by-district/{district_id}', [AjaxController::class, 'getUpazillaByDistrict'])->name('upozila_by_district');
    Route::get('ajax/woodlot-by-garder/{garden_id}', [AjaxController::class, 'getWoodLotByGarden'])->name('wood_lot_by_garden');
    Route::get('ajax/union-by-thana/{thana_id}', [AjaxController::class, 'getUnionByUpazilla'])->name("union_by_thana");
    Route::get('ajax/garden-info/{garden_id}', [AjaxController::class, 'getGardenInfo']);
    Route::get('ajax/garden-by-bit/{bit_id}', [AjaxController::class, 'GardenByBit'])->name('garden_by_bit');
    Route::get('ajax/institute-by-party/{party_id}', [AjaxController::class, 'instituteByParty'])->name('institute_by_party');
    Route::get('ajax/institute-by-lot/{party_id}/{lot_id}', [AjaxController::class, 'instituteByLot'])->name('institute_by_lot');

    Route::any('test', function () {
        $locale = app()->getLocale();
        dd($locale);
    });


    Route::get('lang/{lang}', 'LocalizationController@lang_change');

    Route::any('test/excel', 'WoodLotController@import_excel');
});
