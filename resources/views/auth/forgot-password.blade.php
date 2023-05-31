<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
           <img src="{{ asset('img/login-logo.png') }}" alt="Logo" />
        </x-slot>

        <div class="mb-4 text-sm text-gray-600">
            {{ __('忘記密碼請輸入驗證信箱') }}
        </div>

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif

        <x-jet-validation-errors class="mb-4" />

        <form method="POST" action="{{ route('password.email') }}">
            @csrf

            <div class="block">
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <div class="flex items-center justify-end mt-4">
                <x-jet-button>
                    {{ __('確認發送驗證信件') }}
                </x-jet-button>
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout>
