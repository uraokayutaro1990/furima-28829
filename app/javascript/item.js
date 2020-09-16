function item() { 
  const price = document.getElementById("item-price");
  price.addEventListener("input", () => {
    const value = price.value 
    const profit = value * 0.9 
    const fee = value * 0.1
    document.getElementById("add-tax-price").innerHTML=fee
    document.getElementById("profit").innerHTML=profit

  })
}
window.addEventListener("load", item);