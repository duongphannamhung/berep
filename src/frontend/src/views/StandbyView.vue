<template>
    <div class="pt-16">
        <h1 class="text-3xl font-semibold mb-4">{{ title }}</h1>
        <div>
            <div class="overflow-hidden shadow sm:rounded-md max-w-sm mx-auto text-left">
                <div class="bg-white px-4 py-5 sm:p-6">
                    <div class="mt-2">
                        <p class="flex text-xl justify-center">Trạng thái: tạm nghỉ</p>
                    </div>
                </div>
                <div class="flex justify-center bg-gray-50 px-4 py-3 text-right sm:px-6">
                    <button
                        @click="handleDriverListening"
                        class="inline-flex justify-center rounded-md border border-transparent bg-black py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-gray-600 focus:outline-none">Bắt đầu nhận chuyến</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script setup>
import { ref } from 'vue'
import { useRouter } from 'vue-router'

const title = ref('Waiting for ride request...')
const router = useRouter()

const handleDriverListening = () => {
    router.push({
        name: 'driverlistening'
    })
}
</script>