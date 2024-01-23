[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Email Authentication
	</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" type="text/css"></head>
<body>

  
	
	
	
	
	
  
  
	<div class="md:h-screen bg-white relative flex flex-col justify-center items-center">
	  <div class="md:border md:border-gray-300 bg-white md:shadow-lg shadow-none rounded p-10">
		<div class="flex flex-col items-center space-y-3">
		  <div class="flex">
			<img src="https://gluu.org/wp-content/uploads/2020/12/logo.png">
		  </div>
		  <span class="text-2xl font-semi-bold leading-normal">Email Authentication</span>
		  <p class="leading-normal">Enter your Email address
		  </p>
		</div>
		<form method="post" enctype="application/x-www-form-urlencoded" class="my-8">
		  <input type="hidden" name="location" id="location" value="">
		  <input type="hidden" name="device" id="device" value="">
		  <input type="hidden" name="zone" id="zone" value="">
		  <div class="relative mb-2">
			<label for="code" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  Email Address
			</label>
			<input type="email" id="email" name="email" autofocus="" placeholder="name@example.com" value="${email!}" required="" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2">
		  </div>
		  <div class="space-y-9">
			<div class="text-sm flex justify-between items-center">
			  <button type="submit" class="py-2 px-6 rounded text-white btn bg-green-500 hover:bg-green-600">
				Continue
			  </button>
			</div>
		  </div>
		</form>
	  </div>
	</div>
  
  
</body>

<script>
	function attachHeaders(xhr, headers) {
	  for (var i = 0; i < headers.length; i++) {
		xhr.setRequestHeader(headers[i].name, headers[i].value)
	  }
	}
	function attachEvents(xhr, res, rej) {
	  xhr.onload = () => {
		if (xhr.status < 300) {
		  return res(xhr.responseText)
		}
		else {
		  return rej(xhr.responseText)
		}
	  }
	  xhr.onerror = () => rej(xhr.statusText)
	}
	function genericGET(url, headers) {
	  return new Promise((resolve, reject) => {
		const xhr = new XMLHttpRequest()
		xhr.open("GET", url)
		if (headers) {
		  attachHeaders(xhr, headers)
		}
		attachEvents(xhr, resolve, reject)
		xhr.send()
	  }
						)
	}
	function setDisplayableLocation(city, state, country) {
	  let lolo = [city, state, country].filter((lo) => lo != null)
	  let ty = lolo.join(", ")
	  console.log("You are in " + ty)
	  document.getElementById("location").value = ty
	}
	function processLocation(obj, zoneProp, cityProp, stateProp, countryProp) {
	  if (zoneProp && obj[zoneProp])
		document.getElementById("zone").value = obj[zoneProp]
	  let country = obj[countryProp], state = obj[stateProp], city = obj[cityProp]
	  if (!country && !state && !city) throw new Error("No country/state/city found")
	  setDisplayableLocation(city, state, country)
	}
	window.onload = (event) => {
	  if (platform && platform.description) {
		document.getElementById("device").value = platform.description
	  }
	  <#if captureLocation!false>
		genericGET("https://api.ipapi.is", [])
		.then(result => {
		let obj = JSON.parse(result)
		if (!obj.location) throw new Error("ipapi - no location object")
		processLocation(obj.location, "timezone", "city", "state", "country")   //"countryCode"
	  }
			 )
		.catch(err => {
		console.log("IPAPI call failed:" + err)
		genericGET("https://freeipapi.com/api/json/", [])
		  .then(result => {
		  let obj = JSON.parse(result)
		  processLocation(obj, "timeZone", "cityName", "regionName", "countryName")   //"country_code"
		}
			   )
		  .catch(err => console.log("FREEIPAPI call failed:" + err))                
	  }
			  ) 
	</#if>
	}
  </script>
</html>