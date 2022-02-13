const canHover = window.matchMedia('(hover: hover)').matches;
gsap.utils.toArray(".grid-item").forEach(item => {
    var btn = gsap.utils.toArray(".btn", item);
    var h2 = gsap.utils.toArray(".h2", item);
    var p = gsap.utils.toArray(".p", item);


    var tl = new TimelineLite({paused:true});
    tl.to( item, 1, {y: -10, borderTopWidth:2}, 0.1 );
    tl.to( btn, 1, {opacity:1, y: 40}, 0.1, '<.5');
    tl.to( h2, 1, {y: -40, color:"#caa97d"}, 0.1, '<.5');
    tl.to( p, 1, {y: -40}, 0.1, '<.5');

    item.addEventListener("mouseenter", () => tl.play());
    item.addEventListener("mouseleave", () => tl.reverse());

    // If tablet or Phone then run animation
    if (!canHover) {
        tl.play()
    }

});