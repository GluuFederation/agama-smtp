[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Registration Form
	</title><link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2/dist/tailwind.min.css" type="text/css"></head>
<body>

  
	
	
	
	
	
  
  <div id="content" class="md:h-screen bg-white relative flex flex-col justify-center items-center">
	  <div class="md:border md:border-gray-300 bg-white md:shadow-lg shadow-none rounded p-10 align-middle">
		<div class="flex flex-col items-center space-y-3">
		  <div class="flex">
			<img src="https://gluu.org/wp-content/uploads/2020/12/logo.png">
		  </div>
		  <span data-i18n="profile.user_reg_form" class="text-2xl font-semi-bold leading-normal"></span>
		  <p data-i18n="profile.enter_profile_data" class="leading-normal">
		  </p>
		</div>
		<form method="post" enctype="application/x-www-form-urlencoded" class="my-8">
		  <div class="grid grid-cols-2 gap-2">
		  </div>
		  <div id="iyplr">
			<div class="relative mb-2">
			  <label for="givenName" data-i18n="profile.first_name" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  </label>
			  <input type="text" id="givenName" name="givenName" autofocus="" placeholder="John" value="${name!}" required="" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2">
			</div>
			<div class="relative mb-2">
			  <label for="lastname" data-i18n="profile.last_name" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  </label>
			  <input type="text" id="sn" name="sn" autofocus="" placeholder="Doe" required="" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2">
			</div>
			<div class="relative mb-2">
			  <label for="displayName" data-i18n="profile.display_name" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  </label>
			  <input type="text" id="displayName" name="displayName" autofocus="" placeholder="John" required="" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2">
			</div>
			<div class="relative mb-2">
			  <label for="company" data-i18n="profile.company" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  </label>
			  <input type="text" id="o" name="o" autofocus="" placeholder="Company's Name" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2">
			</div>
			<div class="relative mb-2">
			  <label for="country" data-i18n="profile.country" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  </label>
			  <select type="text" id="c" name="c" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2"><option>select...</option><option value="AF">Afghanistan</option><option value="AX">Aland Islands</option><option value="AL">Albania</option><option value="DZ">Algeria</option><option value="AS">American Samoa</option><option value="AD">Andorra</option><option value="AO">Angola</option><option value="AI">Anguilla</option><option value="AQ">Antarctica</option><option value="AG">Antigua and Barbuda</option><option value="AR">Argentina</option><option value="AM">Armenia</option><option value="AW">Aruba</option><option value="AU">Australia</option><option value="AT">Austria</option><option value="AZ">Azerbaijan</option><option value="BS">Bahamas</option><option value="BH">Bahrain</option><option value="BD">Bangladesh</option><option value="BB">Barbados</option><option value="BY">Belarus</option><option value="BE">Belgium</option><option value="BZ">Belize</option><option value="BJ">Benin</option><option value="BM">Bermuda</option><option value="BT">Bhutan</option><option value="BO">Bolivia</option><option value="BQ">Bonaire, Sint Eustatius and Saba</option><option value="BA">Bosnia and Herzegovina</option><option value="BW">Botswana</option><option value="BV">Bouvet Island</option><option value="BR">Brazil</option><option value="IO">British Indian Ocean Territory</option><option value="BN">Brunei Darussalam</option><option value="BG">Bulgaria</option><option value="BF">Burkina Faso</option><option value="BI">Burundi</option><option value="KH">Cambodia</option><option value="CM">Cameroon</option><option value="CA">Canada</option><option value="CV">Cape Verde</option><option value="KY">Cayman Islands</option><option value="CF">Central African Republic</option><option value="TD">Chad</option><option value="CL">Chile</option><option value="CN">China</option><option value="CX">Christmas Island</option><option value="CC">Cocos (Keeling) Islands</option><option value="CO">Colombia</option><option value="KM">Comoros</option><option value="CG">Congo</option><option value="CD">Congo, Democratic Republic of the Congo</option><option value="CK">Cook Islands</option><option value="CR">Costa Rica</option><option value="CI">Cote D'Ivoire</option><option value="HR">Croatia</option><option value="CU">Cuba</option><option value="CW">Curacao</option><option value="CY">Cyprus</option><option value="CZ">Czech Republic</option><option value="DK">Denmark</option><option value="DJ">Djibouti</option><option value="DM">Dominica</option><option value="DO">Dominican Republic</option><option value="EC">Ecuador</option><option value="EG">Egypt</option><option value="SV">El Salvador</option><option value="GQ">Equatorial Guinea</option><option value="ER">Eritrea</option><option value="EE">Estonia</option><option value="ET">Ethiopia</option><option value="FK">Falkland Islands (Malvinas)</option><option value="FO">Faroe Islands</option><option value="FJ">Fiji</option><option value="FI">Finland</option><option value="FR">France</option><option value="GF">French Guiana</option><option value="PF">French Polynesia</option><option value="TF">French Southern Territories</option><option value="GA">Gabon</option><option value="GM">Gambia</option><option value="GE">Georgia</option><option value="DE">Germany</option><option value="GH">Ghana</option><option value="GI">Gibraltar</option><option value="GR">Greece</option><option value="GL">Greenland</option><option value="GD">Grenada</option><option value="GP">Guadeloupe</option><option value="GU">Guam</option><option value="GT">Guatemala</option><option value="GG">Guernsey</option><option value="GN">Guinea</option><option value="GW">Guinea-Bissau</option><option value="GY">Guyana</option><option value="HT">Haiti</option><option value="HM">Heard Island and Mcdonald Islands</option><option value="VA">Holy See (Vatican City State)</option><option value="HN">Honduras</option><option value="HK">Hong Kong</option><option value="HU">Hungary</option><option value="IS">Iceland</option><option value="IN">India</option><option value="ID">Indonesia</option><option value="IR">Iran, Islamic Republic of</option><option value="IQ">Iraq</option><option value="IE">Ireland</option><option value="IM">Isle of Man</option><option value="IL">Israel</option><option value="IT">Italy</option><option value="JM">Jamaica</option><option value="JP">Japan</option><option value="JE">Jersey</option><option value="JO">Jordan</option><option value="KZ">Kazakhstan</option><option value="KE">Kenya</option><option value="KI">Kiribati</option><option value="KP">Korea, Democratic People's Republic of</option><option value="KR">Korea, Republic of</option><option value="XK">Kosovo</option><option value="KW">Kuwait</option><option value="KG">Kyrgyzstan</option><option value="LA">Lao People's Democratic Republic</option><option value="LV">Latvia</option><option value="LB">Lebanon</option><option value="LS">Lesotho</option><option value="LR">Liberia</option><option value="LY">Libyan Arab Jamahiriya</option><option value="LI">Liechtenstein</option><option value="LT">Lithuania</option><option value="LU">Luxembourg</option><option value="MO">Macao</option><option value="MK">Macedonia, the Former Yugoslav Republic of</option><option value="MG">Madagascar</option><option value="MW">Malawi</option><option value="MY">Malaysia</option><option value="MV">Maldives</option><option value="ML">Mali</option><option value="MT">Malta</option><option value="MH">Marshall Islands</option><option value="MQ">Martinique</option><option value="MR">Mauritania</option><option value="MU">Mauritius</option><option value="YT">Mayotte</option><option value="MX">Mexico</option><option value="FM">Micronesia, Federated States of</option><option value="MD">Moldova, Republic of</option><option value="MC">Monaco</option><option value="MN">Mongolia</option><option value="ME">Montenegro</option><option value="MS">Montserrat</option><option value="MA">Morocco</option><option value="MZ">Mozambique</option><option value="MM">Myanmar</option><option value="NA">Namibia</option><option value="NR">Nauru</option><option value="NP">Nepal</option><option value="NL">Netherlands</option><option value="AN">Netherlands Antilles</option><option value="NC">New Caledonia</option><option value="NZ">New Zealand</option><option value="NI">Nicaragua</option><option value="NE">Niger</option><option value="NG">Nigeria</option><option value="NU">Niue</option><option value="NF">Norfolk Island</option><option value="MP">Northern Mariana Islands</option><option value="NO">Norway</option><option value="OM">Oman</option><option value="PK">Pakistan</option><option value="PW">Palau</option><option value="PS">Palestinian Territory, Occupied</option><option value="PA">Panama</option><option value="PG">Papua New Guinea</option><option value="PY">Paraguay</option><option value="PE">Peru</option><option value="PH">Philippines</option><option value="PN">Pitcairn</option><option value="PL">Poland</option><option value="PT">Portugal</option><option value="PR">Puerto Rico</option><option value="QA">Qatar</option><option value="RE">Reunion</option><option value="RO">Romania</option><option value="RU">Russian Federation</option><option value="RW">Rwanda</option><option value="BL">Saint Barthelemy</option><option value="SH">Saint Helena</option><option value="KN">Saint Kitts and Nevis</option><option value="LC">Saint Lucia</option><option value="MF">Saint Martin</option><option value="PM">Saint Pierre and Miquelon</option><option value="VC">Saint Vincent and the Grenadines</option><option value="WS">Samoa</option><option value="SM">San Marino</option><option value="ST">Sao Tome and Principe</option><option value="SA">Saudi Arabia</option><option value="SN">Senegal</option><option value="RS">Serbia</option><option value="CS">Serbia and Montenegro</option><option value="SC">Seychelles</option><option value="SL">Sierra Leone</option><option value="SG">Singapore</option><option value="SX">Sint Maarten</option><option value="SK">Slovakia</option><option value="SI">Slovenia</option><option value="SB">Solomon Islands</option><option value="SO">Somalia</option><option value="ZA">South Africa</option><option value="GS">South Georgia and the South Sandwich Islands</option><option value="SS">South Sudan</option><option value="ES">Spain</option><option value="LK">Sri Lanka</option><option value="SD">Sudan</option><option value="SR">Suriname</option><option value="SJ">Svalbard and Jan Mayen</option><option value="SZ">Swaziland</option><option value="SE">Sweden</option><option value="CH">Switzerland</option><option value="SY">Syrian Arab Republic</option><option value="TW">Taiwan, Province of China</option><option value="TJ">Tajikistan</option><option value="TZ">Tanzania, United Republic of</option><option value="TH">Thailand</option><option value="TL">Timor-Leste</option><option value="TG">Togo</option><option value="TK">Tokelau</option><option value="TO">Tonga</option><option value="TT">Trinidad and Tobago</option><option value="TN">Tunisia</option><option value="TR">Turkey</option><option value="TM">Turkmenistan</option><option value="TC">Turks and Caicos Islands</option><option value="TV">Tuvalu</option><option value="UG">Uganda</option><option value="UA">Ukraine</option><option value="AE">United Arab Emirates</option><option value="GB">United Kingdom</option><option value="US" selected="">United States</option><option value="UM">United States Minor Outlying Islands</option><option value="UY">Uruguay</option><option value="UZ">Uzbekistan</option><option value="VU">Vanuatu</option><option value="VE">Venezuela</option><option value="VN">Viet Nam</option><option value="VG">Virgin Islands, British</option><option value="VI">Virgin Islands, U.s.</option><option value="WF">Wallis and Futuna</option><option value="EH">Western Sahara</option><option value="YE">Yemen</option><option value="ZM">Zambia</option><option value="ZW">Zimbabwe</option></select>
			</div>
			<div class="relative mb-2">
			  <label for="jansTitle" data-i18n="profile.job_title" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  </label>
			  <input type="text" id="jansTitle" name="jansTitle" autofocus="" placeholder="Architect" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2">
			</div>
			<div class="relative mb-2">
			  <label for="occupation" data-i18n="profile.I_am_an" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  </label>
			  <select type="text" id="jansRole" name="jansRole" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2"><option value="Architect" data-i18n="profile.architect"></option><option value="Developer" data-i18n="profile.developer"></option><option value="Researcher" data-i18n="profile.researcher"></option><option value="Student" data-i18n="profile.student"></option><option value="Other" data-i18n="profile.other"></option></select>
			</div>
			<div class="relative mb-2">
			  <label for="jansProfileURL" data-i18n="profile.linkedin_url" class="label mt-2 ml-1 leading-tighter text-gray-600 text-base cursor-text">
			  </label>
			  <input type="text" id="jansProfileURL" name="jansProfileURL" autofocus="" class="w-full rounded px-3 border border-gray-300 pt-2 pb-2">
			</div>
			<div class="text-sm flex justify-center items-center">
			  <button type="submit" data-callback="onSubmit" data-i18n="profile.submit" class="py-3 px-8 rounded text-white btn bg-green-500 hover:bg-green-600">
			  </button>
			</div>
		  </div>
		</form>
	  </div>
	</div>
  
  
  
  
  
  
</body>
<style>
	* {
	  box-sizing: border-box;
	}
	body {
	  margin: 0;
	}
	* {
	  margin-top: 0px;
	  margin-right: 0px;
	  margin-bottom: 0px;
	  margin-left: 0px;
	  padding-top: 0px;
	  padding-right: 0px;
	  padding-bottom: 0px;
	  padding-left: 0px;
	  font-family: 'Open Sans', sans-serif;
	}
	.input {
	  transition-duration: 0.2s;
	  transition-timing-function: ease-in-out;
	  transition-delay: 0s;
	  transition-property: border;
	  min-width: 280px;
	}
	.input:focus + .label,
	.input:active + .label,
	.input.filled + .label {
	  font-size: 0.75rem;
	  transition-duration: 0.2s;
	  transition-timing-function: ease-out;
	  transition-delay: 0s;
	  transition-property: all;
	  top: -0.9rem;
	  background-color: rgb(255, 255, 255);
	  color: rgb(26, 115, 232);
	  padding-top: 0px;
	  padding-right: 5px;
	  padding-bottom: 0px;
	  padding-left: 5px;
	  margin-top: 0px;
	  margin-right: 5px;
	  margin-bottom: 0px;
	  margin-left: 5px;
	}
	.label {
	  transition-duration: 0.2s;
	  transition-timing-function: ease-out;
	  transition-delay: 0s;
	  transition-property: all;
	  top: 0.4rem;
	  left: 0px;
	}
	.w-full.rounded.px-3.border.border-gray-300.pt-5.pb-2.focus:border-green-700.focus:ring-1.focus:ring-green-700.focus:outline-none.input.active:outline-none {
	  background-color: #eeeeee;
	}
	::-webkit-datetime-edit-year-field:not([aria-valuenow]),
	::-webkit-datetime-edit-month-field:not([aria-valuenow]),
	::-webkit-datetime-edit-day-field:not([aria-valuenow]) {
	  color: transparent;
	}
  </style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/i18next/2.0.22/i18next.min.js"></script><script src="./locale/loc-i18next.js"></script><script>
	var robot = true
	function doSubmit() {
	  if (!robot) {
		document.forms[0].requestSubmit()
	  }
	}
	//Apparently this function only gets invoked just once
	function onSubmit(token) {
	  console.log("Captcha passed")
	  robot = false
	  //Calling clip explicitly won't trigger the form submit... weird :-/
	  setTimeout(doSubmit, 100)
	}
  </script><script src="./locale/locale.js"></script>
</html>