[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>OTP Submission Form
	</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" type="text/css"></head>
<body>

  
	
	
	
	
	
  
  
	<div class="md:h-screen bg-white relative flex flex-col justify-center items-center">
	  <div class="md:border md:border-gray-300 bg-white md:shadow-lg shadow-none rounded p-10">
		<div class="flex flex-col items-center space-y-3">
		  <div class="flex">
			<img src="https://gluu.org/wp-content/uploads/2020/12/logo.png">
		  </div>
		  <span class="text-2xl font-semi-bold leading-normal">OTP Verification</span>
		  [#assign exists = (accountExists!false)]
		  <p class="fs-4 mb-5">
			[#if exists]
			We need to verify it's you 
			[#else]
			No user is currently associated to 
			<span class="i">${email}</span>
			[/#if]
		  </p>
		  [#if resent!false]
		  We sent you a message again.
		  [#else]
		  [#if !exists]
		  <div class="inline-flex items-center justify-center w-full">
			<hr class="w-64 h-1 my-8 bg-gray-200 border-0 rounded dark:bg-gray-700">
			<span class="absolute px-3 font-medium text-white-900 -translate-x-1-2 bg-white left-1-2 dark:text-white dark:bg-gray-900">
			  Please submit the OTP sent to your Email address.<br> Check your inbox - you'll get a message shortly.
			</span>
		  </div>
		  [/#if]
		  [/#if]
		</div>
		[#if !(matches!true)]
		<p align="center" class="fs-6 text-danger mb-4">Wrong code entered!
		</p>
		[/#if]
		<form method="post" enctype="application/x-www-form-urlencoded" class="my-8">
		  <div class="relative mb-2">
			<label for="code" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  Enter OTP
			</label>
			<input type="text" name="passcode" id="passcode" pattern="[0-9]+" placeholder="000000" autocomplete="off" required="" autofocus="" class="bg-gray-50 w-full rounded px-3 border border-gray-300 pt-2 pb-2 focus:border-green-700">
		  </div>
		  <div class="space-y-9">
			<div class="text-sm flex justify-between items-center">
			  <button type="submit" value="Continue" class="py-2 px-6 rounded text-white btn bg-green-500 hover:bg-green-600 button-gradient">
				Continue
			  </button>
			</div>
		  </div>
		</form>
		<form method="post" enctype="application/x-www-form-urlencoded" class="mb-2">
		  <div class="d-flex justify-content-center">
			Didn't get a message?
			<button type="submit" id="resend-2" name="resend" value="" class="text-sm font-bold text-green-500">resend code</button>
		  </div>
		</form>
	  </div>
	</div>
  
</body>


</html>