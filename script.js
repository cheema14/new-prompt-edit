// Minimal JS: form validation + CTA micro-interactions
document.addEventListener('DOMContentLoaded',function(){
  const form = document.getElementById('signup');
  const msg = document.getElementById('form-msg');
  form.addEventListener('submit',function(e){
    e.preventDefault();
    const fd = new FormData(form);
    const email = fd.get('email')||'';
    const product = fd.get('product')||'';
    if(!email || !product){
      msg.textContent = 'Please add your email and a product name.';return;
    }
    // Simulate optimistic UI—replace with real API call when available
    msg.textContent = 'Thanks — check your inbox to finish setup.';
    form.querySelector('button[type="submit"]').disabled = true;
    setTimeout(()=>{form.reset();form.querySelector('button[type="submit"]').disabled=false},3000);
  });

  document.getElementById('primary-cta').addEventListener('click',()=>{
    document.getElementById('signup').querySelector('[name="email"]').focus();
  });

  document.getElementById('demo-cta').addEventListener('click',()=>{
    window.open(location.href+'#pricing','_blank');
  });

  document.getElementById('learn-more').addEventListener('click',()=>{
    window.location.hash = '#features';
  });
});