function emailDisplay(){
	document.write(arguments[0]+"@");
	for(var i=1;i<arguments.length-1;i++){
		document.write(arguments[i]+".");
	}
	document.write(arguments[arguments.length-1]);
}

document.addEventListener('DOMContentLoaded', function() {
	const LASER_KEYWORD = 'laser';
	let buffer = '';

	function activateLaser() {
		document.body.classList.add('laser-active');
		buffer = '';
	}

	function deactivateLaser() {
		document.body.classList.remove('laser-active');
		buffer = '';
	}

	document.addEventListener('keydown', function(e) {
		if (e.key === 'Escape') {
			deactivateLaser();
		return;
		}

		// 只接受單一字元的按鍵
		if (e.key.length !== 1) return;

		buffer += e.key.toLowerCase();

		// buffer 只保留最後 N 個字元（N = keyword 長度）
		if (buffer.length > LASER_KEYWORD.length) {
			buffer = buffer.slice(-LASER_KEYWORD.length);
		}

		if (buffer === LASER_KEYWORD) {
			activateLaser();
		}
	});
});

document.addEventListener('DOMContentLoaded', function() {
  const HOLD_KEY = 'c';
  const HOLD_DURATION = 100;
  let holdTimer = null;

  function activateCh() {
    document.body.classList.add('lang-ch-active');
  }

  function deactivateCh() {
    document.body.classList.remove('lang-ch-active');
  }

  document.addEventListener('keydown', function(e) {
    if (e.key !== HOLD_KEY || e.repeat) return;
    holdTimer = setTimeout(() => {
      activateCh();
    }, HOLD_DURATION);
  });

  document.addEventListener('keyup', function(e) {
    if (e.key !== HOLD_KEY) return;
    clearTimeout(holdTimer);
    deactivateCh();
  });
});
