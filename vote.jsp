<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Vote Page</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<style>
    .container {
	margin: 50px auto;
	padding: 20px;
	width: 500px;
	background-color: #f2f2f2;
	border-radius: 10px;
}

h1 {
	font-size: 24px;
	margin-bottom: 20px;
}

.option {
	margin-bottom: 10px;
}

label {
	margin-left: 10px;
	font-size: 16px;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	margin-top: 10px;
}

button:disabled {
	background-color: #cccccc;
	cursor: not-allowed;
}

#result {
	margin-top: 20px;
	font-size: 20px;
	font-weight: bold;
	text-align: center;
}

</style>
<body>
   
	<div class="container">
		<h1>Vote for your right Candidate:</h1>
		<div class="option">
			<input type="radio" name="color" value="Bhartiya Janta" id="red">
			<label for="Bhartiya Janta">Bhartiya Janta</label>
		</div>
		<div class="option">
			<input type="radio" name="color" value="Indian National Congress" id="blue">
			<label for="Indian National Congress">Indian National Congress</label>
		</div>
		<div class="option">
			<input type="radio" name="color" value="Communist Party of India" id="green">
			<label for="Communist Party of India">Communist Party of India</label>
		</div>
        <div class="option">
			<input type="radio" name="color" value="Bahujan Samaj Party" id="green">
			<label for="Bahujan Samaj Party">Bahujan Samaj Party</label>
		</div>
        <div class="option">
			<input type="radio" name="color" value="Aam Aadmi Party" id="green">
			<label for="Aam Aadmi Party">Aam Aadmi Party</label>
		</div>
        <div class="option">
			<input type="radio" name="color" value="Nationalist Congress Party" id="green">
			<label for="Nationalist Congress Party">Nationalist Congress Party</label>
		</div>
        <div class="option">
			<input type="radio" name="color" value="Indian Justice Party" id="green">
			<label for="Indian Justice Party">Indian Justice Party</label>
		</div>
        <div class="option">
			<input type="radio" name="color" value="Akhil  Hindu Mahasabha" id="green">
			<label for="Akhil  Hindu Mahasabha">Akhil  Hindu Mahasabha</label>
		</div>
		<button id="vote-btn" disabled>Vote</button>
		<p id="result"></p>
	</div>
	<script>
        const radioButtons = document.querySelectorAll('input[name="color"]');
        const voteBtn = document.querySelector('#vote-btn');
        const resultEl = document.querySelector('#result');

radioButtons.forEach(radio => {
	radio.addEventListener('change', () => {
		voteBtn.disabled = false;
	});
});  

voteBtn.addEventListener('click', () => {
	const selectedRadio = document.querySelector('input[name="color"]:checked');
	if (selectedRadio) {
		resultEl.innerText = `You voted for ${selectedRadio.value}.`;
		voteBtn.disabled = true;
	} else {
		resultEl.innerText = 'Please select a candidate to vote.';
	}
});

    </script>
</body>
</html>