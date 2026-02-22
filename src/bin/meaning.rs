//!
#![doc = include_str!("../../meaning.md")]
//!
use mistralrs::{IsqBits, ModelBuilder, TextMessageRole, TextMessages};

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    let model = ModelBuilder::new("Qwen/Qwen3-4B")
        .with_auto_isq(IsqBits::Four)
        .with_logging()
        .build()
        .await?;

    let messages =
        TextMessages::new().add_message(TextMessageRole::User, "What is the meaning of life?");
    let response = model.send_chat_request(messages).await?;
    println!("{}", response.choices[0].message.content.as_ref().unwrap());
    Ok(())
}
