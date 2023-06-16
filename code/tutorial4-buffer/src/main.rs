use tutorial4_buffer::run;

fn main() {
    // run()이 async이기 때문에 future을 await하기 위해 pollster::block_on()을 사용
    pollster::block_on(run());
}
