use std::env;
use std::time::Duration;
use std::thread;
use std::fs::File;
use std::io::Write;
fn export(bitstring:&[u8]) {
    let export = File::create("/sys/class/gpio/export");
    match export.ok() {
        Some(mut f) => {
            f.write_all(bitstring).unwrap()
        },
            None => panic!("Cannot export gpio")
    }
}

fn unexport(bitstring:&[u8]) {
    let unexport = File::create("/sys/class/gpio/unexport");
    match unexport.ok() {
        Some(mut f) => {
            f.write_all(&bitstring).unwrap()
        },
            None => panic!("Cannot unexport")
    }
}

fn init(code:String) {
    let bitstring = code.clone().into_bytes();
    export(&bitstring);
    
    {
        let direction = File::create(format!("/sys/class/gpio/gpio{}/direction",code));
        match direction.ok() {
            Some(mut f) => {
                f.write_all(b"out").unwrap();
                let value = File::create(format!("/sys/class/gpio/gpio{}/value",code));

                // Toggle circuit
                match value.ok() {
                    Some(mut g) => {
                        g.write_all(b"1").unwrap();
                        g.flush().unwrap();
                    }
                    None => panic!("Cannot change value")
                }
                
            },
            None => panic!("Cannot change direction")
        }
    }
    // unexport the gpio
    unexport(&bitstring);
}


fn write_outputs( code:String, duration:u64) {
    let bitstring = code.clone().into_bytes();
    export(&bitstring);
    {
        let direction = File::create(format!("/sys/class/gpio/gpio{}/direction",code));
        match direction.ok() {
            Some(mut f) => {
                f.write_all(b"out").unwrap();
                let value = File::create(format!("/sys/class/gpio/gpio{}/value",code));

                // Toggle circuit
                match value.ok() {
                    Some(mut g) => {
                        g.write_all(b"0").unwrap();
                        g.flush().unwrap();
                        thread::sleep(Duration::from_millis(duration));
                        g.write_all(b"1").unwrap();
                        g.flush().unwrap();
                    }
                    None => panic!("Cannot change value")
                }
                
            },
            None => panic!("Cannot change direction")
        }
    }

    // unexport the gpio
    unexport(&bitstring);
}


fn test(code1:String, code2:String, duration:u64) {

    let bitstring = code1.clone().into_bytes();
    let bitstring2 = code2.clone().into_bytes();
    export(&bitstring);
    export(&bitstring2);
    
    {
        let direction = File::create(format!("/sys/class/gpio/gpio{}/direction",code1));
        match direction.ok() {
            Some(mut f) => {
                f.write_all(b"out").unwrap();
                let value = File::create(format!("/sys/class/gpio/gpio{}/value",code1));

                // Toggle circuit
                match value.ok() {
                    Some(mut g) => {


                        let direction2 = File::create(format!("/sys/class/gpio/gpio{}/direction",code2));
                        match direction2.ok() {
                            Some(mut f2) => {
                                f2.write_all(b"out").unwrap();
                                let value2 = File::create(format!("/sys/class/gpio/gpio{}/value",code2));

                                // Toggle circuit
                                match value2.ok() {
                                    Some(mut g2) => {
                                        g.write_all(b"0").unwrap();
                                        g.flush().unwrap();
                                        
                                        g2.write_all(b"0").unwrap();
                                        g2.flush().unwrap();
                                        thread::sleep(Duration::from_millis(duration));
                                        g.write_all(b"1").unwrap();
                                        g.flush().unwrap();
                                        g2.write_all(b"1").unwrap();
                                        g2.flush().unwrap();

                                    }
                                    None => panic!("Cannot change value")
                                }
                                
                            },
                            None => panic!("Cannot change direction")
                        }
                        
                    }
                    None => panic!("Cannot change value")
                }
                
            },
            None => panic!("Cannot change direction")
        }
    }

    // unexport the gpio
    unexport(&bitstring);
    unexport(&bitstring2);
    
}
fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        println!("Usage: killswitch [reset|power|hard|init]");
        return;

    }
    let mode = &args[1];

    /* Parse command line args*/
    let mut ocode:String;
    let duration:u64;
    // TODO: replace these with actual values.
    if mode.eq_ignore_ascii_case("power") {
        ocode = String::from("1013"); // XIO-P0
        duration = 500;
    }
    else if mode.eq_ignore_ascii_case("hard") {
        ocode = String::from("1013"); // XIO-P0
        duration = 5000;
    }

    else if mode.eq_ignore_ascii_case("reset") {
        //ocode = String::from("1014"); // XIO-P1
        ocode = String::from("1015"); // XIO-P2
        duration = 500;
    }
    else if mode.eq_ignore_ascii_case("init") {
        init(String::from("1013"));
        init(String::from("1014"));
        init(String::from("1015"));
        init(String::from("1016"));

        //write_outputs(ocode, duration);
        return;
    }
    else if mode.eq_ignore_ascii_case("test") {
        test(String::from("1013"), String::from("1014"), 2000);
        test(String::from("1015"), String::from("1016"), 2000);
        return;
    }
        
    else{
        println!("Usage: killswitch [reset|power|hard|init]");
        return;
    }

    write_outputs(ocode, duration);
}
