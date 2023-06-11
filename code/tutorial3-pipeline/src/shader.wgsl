// Vertex shader

// vertex shader의 output을 저장하기 위한 struct
struct VertexOutput {
    @builtin(position) clip_position: vec4<f32>,
};

@vertex    // vertex shader임을 명시
fn vs_main(
    @builtin(vertex_index) in_vertex_index: u32,
) -> VertexOutput {
    var out: VertexOutput;
    let x = f32(1- i32(in_vertex_index)) * 0.5;
    let y = f32(i32(in_vertex_index & 1u) * 2 - 1) * 0.5;
    out.clip_position = vec4<f32>(x, y, 0.0, 1.0);
    return out;
}

// Fragment shader

@fragment  // fragment shader임을 명시
fn fs_main(in: VertexOutput) -> @location(0) vec4<f32> {
    return vec4<f32>(0.8, 0.2, 0.1, 1.0); // fragment 색상을 반환
}