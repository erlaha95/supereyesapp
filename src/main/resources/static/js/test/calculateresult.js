// local storage method for user answers
var userAnswers = localStorage.getItem('userAnswers');
console.log(userAnswers);
userAnswers = userAnswers.split(',');
// index 0 comes over as empty - remove it and shift elements
userAnswers.splice(0, 1);
// if no answer to one of the questions
for (i = 0; i < userAnswers.length; i++) {
	if (userAnswers[i] === '') {
		userAnswers.splice(i, 1, 'No answer');
	}
}
// local storage method for correct answers
var correctAnswers = localStorage.getItem('correctAnswers');
correctAnswers = correctAnswers.split(',');

//calculates the percent correct
function checkResult(userAnswers, correctAnswers) {
	var score = 0;
	for (var i = 0; i < userAnswers.length; i++) {
		if (userAnswers[i] === correctAnswers[i]) {
			score++;
		}
	}
	score = ((score / correctAnswers.length) * 100).toFixed();
	return score;
}

//display result in success page
function displayResult(result) {
	console.log('display');
	console.log(result);
	var calculatedPercent = +checkResult(userAnswers, correctAnswers);
	if (calculatedPercent >= result.minPercentForSuccess) {
		$('.result').html(
				'Вы набрали ' + calculatedPercent + '%'
						+ '<span class="displayPercent">'
						+ result.successMessage + '</span>');
	} else {
		$('.result').html(
				'Вы набрали ' + calculatedPercent + '%'
						+ '<span class="displayPercent">'
						+ result.failureMessage + '</span>');
	}
	clearLocalStrorage();
}

function clearLocalStrorage() {
	localStorage.removeItem('userAnswers');
	localStorage.removeItem('correctAnswers');
	localStorage.removeItem('testId');
}

function getResultMessage() {
	var testId = localStorage.getItem('testId');
	console.log("/api/tests/" + testId);
	$('#indicator').show();
	$.ajax({
		url : "/api/tests/" + testId,
		type : 'GET',
		dataType : 'json', // added data type
		success : function(res) {
			console.log(res);
			$('#indicator').hide();
			displayResult(res);

		},
		error : function(xhr, textStatus, errorThrown) {
			$('#indicator').hide();
			console.log(xhr.status);
		}
	});
}

window.onload = getResultMessage;
