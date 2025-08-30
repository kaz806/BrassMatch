document.addEventListener("turbo:load", () => {
  // 診断ボタンの切り替え処理
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

  // ナビゲーションリンクの切り替え処理
  const navLinks = document.querySelectorAll(".activity-nav a");
  const sections = document.querySelectorAll(".activity-section");

  navLinks.forEach(link => {
    link.addEventListener("click", e => {
      e.preventDefault();
      const targetId = link.getAttribute("data-target");

      sections.forEach(section => {
        section.style.display = section.id === targetId ? "block" : "none";
      });
    });
  });

  // 初期状態：最初のセクションだけ表示
  sections.forEach((section, index) => {
    section.style.display = index === 0 ? "block" : "none";
  });
});

// 外部から診断ブロックを表示する関数（必要なら使用）
function showDiagnosis(id) {
  document.querySelectorAll('.diagnosis-block').forEach(el => {
    el.style.display = 'none';
  });
  const target = document.getElementById(`diagnosis-${id}`);
  if (target) {
    target.style.display = 'block';
  }
}