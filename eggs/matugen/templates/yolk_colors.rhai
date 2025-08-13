export let matugen = #{
    <* for name, value in colors *>
        {{name}}: "{{value.default.hex}}",
    <* endfor *>
}
