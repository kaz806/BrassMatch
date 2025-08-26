document.addEventListener("DOMContentLoaded", () => {
  const buttons = document.querySelectorAll(".diagnosis-button");
  const blocks = document.querySelectorAll(".diagnosis-block");

  buttons.forEach(button => {
    button.addEventListener("click", () => {
      const targetId = button.dataset.id;

      blocks.forEach(block => {
        block.style.display = "none";
      });

      const targetBlock = document.getElementById(targetId);
      if (targetBlock) {
        targetBlock.style.display = "block";
      }
    });
  });
});

function showDiagnosis(id) {
  document.querySelectorAll('.diagnosis-block').forEach(el => {
    el.style.display = 'none';
  });
  document.getElementById(`diagnosis-${id}`).style.display = 'block';
}