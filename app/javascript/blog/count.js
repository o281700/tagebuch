function count() {
  const articleTitle = document.getElementById("articleTitle");
  articleTitle.addEventListener("keyup", () => {
    const titleVal = articleTitle.value.length;
    const titleNum = document.getElementById("title_num");
    titleNum.innerHTML = `${titleVal}文字/40文字`;
  });

  const articleText = document.getElementById("articleText");
  articleText.addEventListener("keyup", () => {
    const textVal = articleText.value.length;
    const textNum = document.getElementById("text_num");
    textNum.innerHTML = `${textVal}文字/1000文字`;
  });
}

window.addEventListener("load", count);
