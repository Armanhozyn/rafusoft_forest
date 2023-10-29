<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
        <!-- Brand -->
        <div class="sidenav-header  d-flex  align-items-center">
            <a class="navbar-brand" href="{{ route('home') }}" data-toggle="tooltip"
                data-original-title="{{ setting('company_name') }}">
                @if (setting('company_logo'))
                    <img alt="{{ setting('company_name') }}" height="45" class="navbar-brand-img"
                        src="{{ asset(setting('company_logo')) }}">
                @else
                    {{ substr(setting('company_name'), 0, 15) }}...
                @endif
            </a>
            <div class=" ml-auto ">
                <!-- Sidenav toggler -->
                <div class="sidenav-toggler d-none d-xl-block" data-action="sidenav-unpin" data-target="#sidenav-main">
                    <div class="sidenav-toggler-inner">
                        <i class="sidenav-toggler-line"></i>
                        <i class="sidenav-toggler-line"></i>
                        <i class="sidenav-toggler-line"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar-inner">
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Nav items -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('home*') ? 'active' : '' }}" href="{{ route('home') }}">
                            <i class="ni ni-shop text-primary"></i>
                            <span class="nav-link-text">{{ __('navbar.dashboard') }}</span>
                        </a>
                    </li>

                    @canany(['view-user', 'create-user'])

                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('users*') ? 'active' : '' }}" href="#navbar-general"
                                data-toggle="collapse" role="button" aria-expanded="true" aria-controls="navbar-general">
                                <i class="fas text-primary fa-tasks"></i>
                                <span class="nav-link-text">{{ __('navbar.general') }}</span>
                            </a>
                            <div class="collapse" id="navbar-general">
                                <ul class="nav nav-sm flex-column">
                                    @can('view-user')
                                        <li class="nav-item">
                                            <a href="{{url('/country')}}" class="nav-link"><span class="sidenav-mini-icon">D </span><span
                                                    class="sidenav-normal">{{ __('navbar.countries') }}</span></a>
                                        </li>
                                    @endcan

                                    @can('create-country_division')
                                        <li class="nav-item">
                                            <a href="{{url('/country_division')}}" class="nav-link"><span class="sidenav-mini-icon">D
                                                </span><span class="sidenav-normal">{{ __('lang.country_division') }}</span></a>
                                        </li>
                                    @endcan

                                    @can('view-user')
                                        <li class="nav-item">
                                            <a href="{{url('/district')}}" class="nav-link"><span class="sidenav-mini-icon">D </span><span
                                                    class="sidenav-normal">{{ __('navbar.districts') }}</span></a>
                                        </li>
                                    @endcan

                                    @can('view-user')
                                        <li class="nav-item">
                                            <a href="{{url('/thana')}}" class="nav-link"><span class="sidenav-mini-icon">D </span><span
                                                    class="sidenav-normal">{{ __('lang.thana') }}</span></a>
                                        </li>
                                    @endcan

                                    @can('view-user')
                                        <li class="nav-item">
                                            <a href="{{url('/projects')}}" class="nav-link"><span class="sidenav-mini-icon">D </span><span
                                                    class="sidenav-normal">{{ __('navbar.projects') }}</span></a>
                                        </li>
                                    @endcan

                                    @can('view-user')
                                        <li class="nav-item">
                                            <a href="{{url('/range')}}" class="nav-link"><span class="sidenav-mini-icon">D </span><span
                                                    class="sidenav-normal">{{ __('navbar.ranges') }}</span></a>
                                        </li>
                                    @endcan
                                    @can('view-user')
                                        <li class="nav-item">
                                            <a href="{{url('/union')}}" class="nav-link"><span class="sidenav-mini-icon">D </span><span
                                                    class="sidenav-normal">{{ __('navbar.unions') }}</span></a>
                                        </li>
                                    @endcan
                                    @can('create-user')
                                        <li class="nav-item">
                                            <a href="{{url('/land_owner')}}" class="nav-link"><span class="sidenav-mini-icon">D
                                                </span><span class="sidenav-normal">{{ __('navbar.land_owners') }}</span></a>
                                        </li>
                                    @endcan

                                    @can('create-user')
                                        <li class="nav-item">
                                            <a href="{{url('/beneficiary')}}" class="nav-link"><span class="sidenav-mini-icon">D
                                                </span><span class="sidenav-normal">{{ __('navbar.beneficiaries') }}</span></a>
                                        </li>
                                    @endcan
                                    @can('create-user')
                                        <li class="nav-item">
                                            <a href="{{url('/bit')}}" class="nav-link"><span class="sidenav-mini-icon">D
                                                </span><span class="sidenav-normal">{{ __('navbar.bit') }}</span></a>
                                        </li>
                                    @endcan
                                    @can('create-forest_type')
                                        <li class="nav-item">
                                            <a href="{{url('/forest_type')}}" class="nav-link"><span class="sidenav-mini-icon">D
                                                </span><span class="sidenav-normal">{{ __('lang.forest_type') }}</span></a>
                                        </li>
                                    @endcan

                                </ul>
                            </div>
                        </li>
                    @endcan


                    @canany(['view-category', 'create-category'])

                    {{-- <li class="nav-item">
                        <a class="nav-link {{ request()->is('garden*') ? 'active' : '' }}" href="#navbar-garden-info"
                            data-toggle="collapse" role="button" aria-expanded="true" aria-controls="navbar-garden-info">
                            <i class="fas text-primary fa-list-alt"></i>
                            <span class="nav-link-text">বাগানের তথ্য</span>
                        </a>
                        <div class="collapse" id="navbar-garden-info">
                            <ul class="nav nav-sm flex-column">
                                @can('view-category')
                                    <li class="nav-item">
                                        <a href="{{ route('garden-information.index') }}" class="nav-link"><span
                                                class="sidenav-mini-icon">D </span><span class="sidenav-normal">বাগানের তালিকা</span></a>
                                    </li>
                                @endcan


                            </ul>
                        </div>
                    </li> --}}

                @endcan


                    @canany(['view-category', 'create-category'])

                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('garden*') ? 'active' : '' }}" href="#navbar-garden"
                                data-toggle="collapse" role="button" aria-expanded="true" aria-controls="navbar-garden">
                                <i class="fas text-primary fa-list-alt"></i>
                                <span class="nav-link-text">{{ __('navbar.garden_creation_info') }}</span>
                            </a>
                            <div class="collapse" id="navbar-garden">
                                <ul class="nav nav-sm flex-column">
                                    @can('view-category')
                                    <li class="nav-item">
                                        <a href="{{ route('garden.create') }}" class="nav-link"><span
                                                class="sidenav-mini-icon">D </span><span class="sidenav-normal">{{__('নতুন বাগান সৃজনের তথ্য')}}</span></a>
                                    </li>
                                @endcan

                                    @can('view-category')
                                        <li class="nav-item">
                                            <a href="{{ route('garden.index') }}" class="nav-link"><span
                                                    class="sidenav-mini-icon">D </span><span class="sidenav-normal">বাগানের তালিকা</span></a>
                                        </li>
                                    @endcan


                                </ul>
                            </div>
                        </li>

                    @endcan



                    @canany(['view-category', 'create-category'])

                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('garden*') ? 'active' : '' }}" href="#navbar-sold-garden"
                                data-toggle="collapse" role="button" aria-expanded="true" aria-controls="navbar-sold-garden">
                                <i class="fas text-primary fa-list-alt"></i>
                                <span class="nav-link-text">{{ __('navbar.sold_garden_info') }}</span>
                            </a>
                            <div class="collapse" id="navbar-sold-garden">
                                <ul class="nav nav-sm flex-column">

                                    @can('create-category')
                                        <li class="nav-item">
                                            <a href="{{ route('garden.woodlot.create') }}" class="nav-link"><span
                                                    class="sidenav-mini-icon"></span><span class="sidenav-normal">{{ __('navbar.lot_description') }}
                                                    </span></a>
                                        </li>
                                    @endcan

                                        @can('create-category')
                                            <li class="nav-item">
                                                <a href="{{ route('garden.woodlot.payment') }}" class="nav-link"><span
                                                        class="sidenav-mini-icon"></span><span class="sidenav-normal">{{ __('navbar.lot_money_collection_and_deposit') }}</span></a>
                                            </li>
                                        @endcan

                                    @can('create-category')
                                    <li class="nav-item">
                                        <a href="{{ route('garden.woodlot.bank_deposit') }}" class="nav-link"><span
                                                class="sidenav-mini-icon"></span><span class="sidenav-normal">{{ __('navbar.bank_deposit_details') }}</span></a>
                                    </li>
                                @endcan

                                @can('create-category')
                                <li class="nav-item">
                                    <a href="{{ route('paymenthistory.index') }}" class="nav-link"><span
                                            class="sidenav-mini-icon">D </span><span class="sidenav-normal">{{ __('navbar.payment_history') }}</span></a>
                                </li>
                            @endcan

                                </ul>
                            </div>
                        </li>



                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('garden*') ? 'active' : '' }}" href="#navbar-profit-share"
                                data-toggle="collapse" role="button" aria-expanded="true" aria-controls="navbar-profit-share">
                                <i class="fas text-primary fa-list-alt"></i>
                                <span class="nav-link-text">{{ __('navbar.profit_sharing_info') }}</span>
                            </a>
                            <div class="collapse" id="navbar-profit-share">
                                <ul class="nav nav-sm flex-column">


                                    @can('create-category')
                                        <li class="nav-item">
                                            <a href="{{ route('garden.profit_share.create') }}" class="nav-link"><span
                                                    class="sidenav-mini-icon">D </span><span class="sidenav-normal">{{ __('navbar.profit_share') }}
                                                    </span></a>
                                        </li>
                                    @endcan
                                </ul>
                            </div>
                        </li>






                    @endcan




                    <li class="nav-item">
                        <a class="nav-link {{ request()->is('category*') ? 'active' : '' }}" href="#navbar-report"
                            data-toggle="collapse" role="button" aria-expanded="true"
                            aria-controls="navbar-report">
                            <i class="fas text-primary fa-list-alt"></i>
                            <span class="nav-link-text">{{ __('navbar.detailed_report') }}</span>
                        </a>
                        <div class="collapse" id="navbar-report">
                            <ul class="nav nav-sm flex-column">
                                @can('view-category')
                                    <li class="nav-item">
                                        <a  href="{{url('/report/index')}}" class="nav-link"><span
                                                class="sidenav-mini-icon">D </span><span class="sidenav-normal">প্রতিবেদন তৈরি করুন</span></a>
                                    </li>
                                @endcan

                            </ul>
                        </div>
                    </li>



                    @canany(['view-user', 'create-user'])

                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('users*') ? 'active' : '' }}" href="#navbar-users"
                                data-toggle="collapse" role="button" aria-expanded="true" aria-controls="navbar-users">
                                <i class="fas text-primary fa-tasks"></i>
                                <span class="nav-link-text">{{ __('navbar.manage_users') }}</span>
                            </a>
                            <div class="collapse" id="navbar-users">
                                <ul class="nav nav-sm flex-column">
                                    @can('view-user')
                                        <li class="nav-item">
                                            <a href="{{ route('users.index') }}" class="nav-link"><span
                                                    class="sidenav-mini-icon">D </span><span class="sidenav-normal">{{ __('navbar.all_users') }}</span></a>
                                        </li>
                                    @endcan
                                    @can('create-user')
                                        <li class="nav-item">
                                            <a href="{{ route('users.create') }}" class="nav-link"><span
                                                    class="sidenav-mini-icon">D </span><span class="sidenav-normal">{{ __('navbar.add_new_user') }}</span></a>
                                        </li>
                                    @endcan
                                </ul>
                            </div>
                        </li>
                    @endcan

                    @canany(['view-permission', 'create-permission'])
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('permissions*') ? 'active' : '' }}"
                                href="{{ route('permissions.index') }}">
                                <i class="fas fa-lock-open text-primary"></i>
                                <span class="nav-link-text">{{ __('navbar.manage_permissions') }}</span>
                            </a>
                        </li>
                    @endcan
                    @canany(['view-role', 'create-role'])
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('roles*') ? 'active' : '' }}"
                                href="{{ route('roles.index') }}">
                                <i class="fas fa-lock text-primary"></i>
                                <span class="nav-link-text">{{ __('navbar.manage_roles') }}</span>
                            </a>
                        </li>
                    @endcan

{{--                     @canany(['media'])
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('media*') ? 'active' : '' }}"
                                href="{{ route('media.index') }}">
                                <i class="fas fa-images text-primary"></i>
                                <span class="nav-link-text">Manage Media</span>
                            </a>
                        </li>
                    @endcan --}}
{{--                     @canany(['view-activity-log'])
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('activity-log*') ? 'active' : '' }}"
                                href="{{ route('activity-log.index') }}">
                                <i class="fas fa-history text-primary"></i>
                                <span class="nav-link-text">Activity Log</span>
                            </a>
                        </li>
                    @endcan --}}

                    @can('update-settings')
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('settings*') ? 'active' : '' }}"
                                href="{{ route('settings.index') }}">
                                <i class="ni ni-settings-gear-65 text-primary"></i>
                                <span class="nav-link-text">{{ __('navbar.manage_settings') }}</span>
                            </a>
                        </li>
                    @endcan

                    <li class="nav-item">
                        <hr class="my-3">
                    </li>
{{--                     <li class="nav-item">
                        <a class="nav-link active active-pro" href="{{ route('components') }}">
                            <i class="ni ni-send text-primary"></i>
                            <span class="nav-link-text">Components</span>
                        </a>
                    </li> --}}
                </ul>
            </div>
        </div>
    </div>
</nav>
