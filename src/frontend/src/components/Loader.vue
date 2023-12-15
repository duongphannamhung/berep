<template>
    <div class="flex flex-col items-center">
        <span class="loader"></span>
        <button @click="standByButtonClick" class="my-12 mx-auto inline-flex justify-center rounded-md border border-transparent bg-black py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-gray-600 focus:outline-none">Tạm nghỉ</button>
    </div>
</template>
<style>
.loader {
    display: block;
    position: relative;
    height: 32px;
    width: 120px;
    background: linear-gradient(#000 4px, transparent 0) no-repeat;
    background-position: 0 16px;
    box-sizing: border-box;
    overflow: hidden;
}

.loader:before {
    content: '';
    position: absolute;
    left: 0;
    bottom: 2px;
    width: 28px;
    height: 28px;
    border-radius: 50%;
    background: #FFF;
    border: 6px solid #000;
    box-sizing: border-box;
    animation: ballbns 1.5s linear infinite;
}

@keyframes ballbns {
    0% {
        left: 0;
        transform: translateX(-100%);
    }

    100% {
        left: 100%;
        transform: translateX(0%);
    }
}
</style>
<script setup>
import { useRouter } from 'vue-router'
const router = useRouter()
// export default {
//   methods: {
//     standByButtonClick() {
//       // Add your button click functionality here
//     },
//   },
// };
const standByButtonClick = () => {
    router.push({
        name: 'standby'
    })
}
</script>