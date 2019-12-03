function sortTable(n,f) {
  var table, rows, switching, c, clim, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("table");
  rows = table.rows;
  clim = [4,2]
  for(c = 0; c < clim[f]; c++){
    document.getElementById(`${c}up`).style.color="white";
    document.getElementById(`${c}down`).style.color="white";
  }
  document.getElementById(`${n}up`).style.color="#ADFF2F";
  switching = true;
  // Set the sorting direction to ascending:
  dir = "asc";
  /* Make a loop that will continue until
  no switching has been done: */
  while (switching) {
    // Start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /* Loop through all table rows (except the
    first, which contains table headers): */
    for (i = 1; i < (rows.length - 1); i++) {
      // Start by saying there should be no switching:
      shouldSwitch = false;
      /* Get the two elements you want to compare,
      one from current row and one from the next: */
      
      x = rows[i].getElementsByTagName("td")[n];
      y = rows[i + 1].getElementsByTagName("td")[n];
      console.log(x)
      console.log(y)
      
      /* Check if the two rows should switch place,
      based on the direction, asc or desc: */
      if (dir == "asc") {
        if (x.innerText.toLowerCase() > y.innerText.toLowerCase()) {
          // If so, mark as a switch and break the loop:
          console.log(x.innerHTML.toLowerCase())
          shouldSwitch = true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerText.toLowerCase() < y.innerText.toLowerCase()) {
          // If so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /* If a switch has been marked, make the switch
      and mark that a switch has been done: */
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      // Each time a switch is done, increase this count by 1:
      switchcount ++;
    } else {
      /* If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again. */
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        document.getElementById(`${n}up`).style.color="white";
        document.getElementById(`${n}down`).style.color="#ADFF2F";
        switching = true;
      }
    }
  }
}