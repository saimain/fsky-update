<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FSKY | Dashboard</title>

    {{-- Tailwind Css --}}
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
</head>

<body>
    <div class="m-10">
        <h1 class="font-bold text-gray-700 uppercase flex">Featured Songs <span
                class="flex rounded-full bg-indigo-500 uppercase px-2 py-1 text-xs text-white font-bold ml-1">New</span>
        </h1>

        <div class="flex items-stretch mt-5">
            <img class="w-1/4 mr-3 rounded-lg cursor-pointer"
                src="https://images.pexels.com/photos/213207/pexels-photo-213207.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                alt="">

            <img class="w-1/4 mr-3 rounded-lg cursor-pointer"
                src="https://images.pexels.com/photos/3388899/pexels-photo-3388899.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                alt="">
            <img class="w-1/4 mr-3 rounded-lg cursor-pointer"
                src="https://images.pexels.com/photos/1537636/pexels-photo-1537636.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                alt="">
            <img class="w-1/4 rounded-lg cursor-pointer"
                src="https://images.pexels.com/photos/1543/landscape-nature-man-person.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                alt="">
        </div>
    </div>

    <div class="m-10">
        <div class="flex justify-between">
            <h1 class="font-bold text-gray-700 uppercase flex">Songs Playground
            </h1>
            <div>
                <input type="text" class="pl-5 border-solid rounded-full border-2 border-gray-600 h-10"
                    placeholder="Search Song">
            </div>
        </div>


        <div class="flex justify-between mt-5">
            <div class="bg-white shadow px-5 flex flex-col justify-center w-1/2 rounded-lg h-20">
                <div class="flex justify-between">
                    <h1 class="font-bold">1.</h1>
                    <div class="text-center w-auto">
                        <h1 class="font-bold">Yummy</h1>
                    </div>
                    <div class="text-center w-auto">
                        <h1 class="font-bold">Justin Biber</h1>
                        <h1 class="font-bold">Chance</h1>
                    </div>
                    <div class="text-center w-auto">
                        <button class="bg-blue-500 text-white py-2 w-20 rounded-full mr-2">Details</button>
                        <button class="bg-blue-500 text-white py-2 w-20 rounded-full">Play</button>
                    </div>
                </div>
            </div>

            <div class="bg-white shadow px-5 flex flex-col justify-center w-1/2 rounded-lg h-20">
                <div class="flex justify-between">
                    <h1 class="font-bold">1.</h1>
                    <div class="text-center w-auto">
                        <h1 class="font-bold">Yummy</h1>
                    </div>
                    <div class="text-center w-auto">
                        <h1 class="font-bold">Justin Biber</h1>
                        <h1 class="font-bold">Chance</h1>
                    </div>
                    <div class="text-center w-auto">
                        <button class="bg-blue-500 text-white py-2 w-20 rounded-full mr-2">Details</button>
                        <button class="bg-blue-500 text-white py-2 w-20 rounded-full">Play</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>