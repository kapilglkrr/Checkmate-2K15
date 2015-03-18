var teamName = $('.fn').html();
var score = parseInt($('.topContainer1').html());
var level = 1;
var canUpgradeLevel = 0;
var questionsAttempted;
var flip = parseInt($('#numflip').html());
var doubleDip = parseInt($('#numDoubleDip').html());;

var presentQuestion;
var canUseDoubleDip = 0;
var canUseFlip = 0;
var flipUsed = 0;
var doubleDipUsed = 0;


function changeLevel(level) {
	if(level == 1) {
		$('#levelBox').html('LEVEL 1');
		$('#levelBox').css({'background-color': '#e54444'});
	}
	if(level == 2) {
		$('#levelBox').html('LEVEL 2');
		$('#levelBox').css({'background-color': '#0e97a7'});
	}
}

function changeQuestion(num) {
	$('#numQuestion').html('Question '+num);
} 

function updateScore(current) {
    $scoreBox = $("#topContainer1");
    var onBoard = $scoreBox.text();
    if (onBoard > current) {
        var i = setInterval(function()
        {
            if (onBoard === current) {
                clearInterval(i);
                $scoreBox.css("color", "white");
            }
            else
            {
                onBoard--;
                $scoreBox.text(onBoard);
                if ($scoreBox.css("color") === "rgb(255, 255, 255)")
                    $scoreBox.css("color", "rgb(220, 22, 24)");
                else
                    $scoreBox.css("color", "white");
            }
        }, 80);
    }
    else if (onBoard < current) {
        console.log("green path");
        var i = setInterval(function()
        {
            if (onBoard === current) {
                clearInterval(i);
                $scoreBox.css("color", "white");
            }
            else
            {
                onBoard++;
                $scoreBox.text(onBoard);
                if ($scoreBox.css("color") === "rgb(255, 255, 255)")
                    $scoreBox.css("color", "rgb(135, 189, 0)");
                else
                    $scoreBox.css("color", "white");
            }
        }, 80);
    }

}

function addflip() {
	if(flip > 0 && flipUsed == 0 && doubleDipUsed == 0) {
		flip -= 1;
		flipUsed = 1;
		$('#numflip').html(flip);
		$('#flipCheck').html('Using flip !')
	}
	else
		console.log('fail')
}

function addDoubleDip() {
	if(doubleDip > 0 && flipUsed == 0 && doubleDipUsed == 0) {
		doubleDip -= 1;
		doubleDipUsed = 1;
		$('#numDoubleDip').html(doubleDip);
		$('#doubleDipCheck').html('Using Double Dip !')
	}
	else
		console.log('fail');
}

function buyLaterflip() {
	if (score > 15) {
		score -= 15;
		flip++;
		updateScore(score);
		$('#numflip').html(flip);
	}
}

function buyLaterDoubleDip() {
	if (score > 15) {
		score -= 15;
		doubleDip++;
		updateScore(score);
		$('#numDoubleDip').html(doubleDip);
	}
}


$('#useflip').click(function() {
	//ajax request !
	addflip();
});

$('#useDoubleDip').click(function() {
	//ajax request !
	addDoubleDip();
});

$('#buyflip').click(function() {
	//ajax request !
	buyLaterflip();
});

$('#buyDoubleDip').click(function() {
	//ajax request !
	buyLaterDoubleDip();
});


$('.qButton').click(function() {
	var attempted = $(this).hasClass('nonClickableQuestion');
	var queriedFor = parseInt($(this).html().substring(1));
	if(!attempted) {
		$.ajax({
			url : '/question/',
			type : "GET",
			data : $.param({ no : queriedFor }),
			success : function(data) {
				if(data.status == 1)
					$('#numQuestion').html('Question '+queriedFor);
					$('#IOContent').html(data.content);
					presentQuestion = queriedFor;
					canUseDoubleDip = data.cdd;
			}
		});
	}
});

$('#answerSubmit').click(function() {
	var ans = $('#answerBox').val();
	var ddu = (doubleDipUsed==0)?false:true;
	$.ajax({
		url : '/question/',
		type : "POST",
		data : $.param({ answer : ans, no : presentQuestion, dd : ddu }),
		success : function(data) {
			alert(data);
		}
	});	
});