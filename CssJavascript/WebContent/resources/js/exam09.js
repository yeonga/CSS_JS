class Car { 
	//생성자(내부에서 필드를 선언)
	constructor(model, color) {
		//필드 선언
		this.company = "현대자동차";
		this.model = model;
		this.color = color;
		this.speed = 0;
	}
	
	//메소드
	start() {
		console.log("시동을 겁니다.");
	}
	
	stop() {
		this.setSpeed(0);
		console.log("멈춥니다.");
	}
	
	setSpeed(speed) {
		this.speed = speed;
	}
	
	run() {
		console.log(this.speed + "로 달립니다.");
	}
}