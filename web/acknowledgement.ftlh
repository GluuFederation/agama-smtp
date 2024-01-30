[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Acknowledgement
	</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" type="text/css"></head>
<body>[#ftl output_format="HTML"]





  
	
	
	
	
	
  
  
	<div id="content" class="md:h-screen bg-white relative flex flex-col justify-center items-center">
	  <div class="md:border md:border-gray-300 bg-white md:shadow-lg shadow-none rounded p-10 align-middle">
		<div class="flex flex-col items-center space-y-3">
		  <div class="flex">
			<img src="https://gluu.org/wp-content/uploads/2020/12/logo.png">
		  </div>
		  <span data-i18n="acknowledgement.acknowledgement" class="text-2xl font-semi-bold leading-normal"></span>
		  <p class="leading-normal">
			<span data-i18n="acknowledgement.registration_message_fragment1"></span>
			<span> ${name}!</span>
			<span data-i18n="acknowledgement.registration_message_fragment2"></span>
			<span> ${email} </span>
			<span data-i18n="acknowledgement.registration_message_fragment3"></span>
		  </p>
		  <p data-i18n="acknowledgement.ack_message" class="leading-normal">
		  </p>
		</div>
		<form method="post" class="my-8">
		  <div class="space-y-9">
			<div class="text-sm flex justify-center items-center">
			  <button type="submit" id="ack" name="ack" value="continue" data-i18n="acknowledgement.continue" class="py-2 px-6 rounded text-white btn bg-green-500 hover:bg-green-600">
			  </button>
			</div>
		  </div>
		</form>
	  </div>
	</div>
  
  
  
  
  


  
  
  
</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/i18next/2.0.22/i18next.min.js"></script><script src="./locale/loc-i18next.js"></script><script>
	window.onload = function () {
	  var form = document.querySelector("form");
	};
  </script><script src="./locale/locale.js"></script>
</html>