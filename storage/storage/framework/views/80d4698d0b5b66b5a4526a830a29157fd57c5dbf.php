<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f8f8f8;
        }
        .email-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        .header, .footer {
            text-align: center;
            background-color: #f8f8f8;
            padding: 10px 0;
        }
        .header a, .footer a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }
        .content {
            margin: 20px 0;
            text-align: center;
            
        }

        .button {
            display: inline-block;
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="email-container">
        <div class="header">
            <a href="<?php echo e($details['url']); ?>"><?php echo e(config('app.name')); ?></a>
        </div>

        <div class="content">
            <h1><?php echo e($details['title']); ?></h1>
            <p>Click here for verification .</p>
            <a href="<?php echo e($details['url']); ?>" class="button">Click Here</a>
        </div>

        

        <div class="disclaimer">
       <p class="disclaimer"> This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
        <p class="disclaimer">For any concerns, please reach out to us at tahelpdesk@cipl.org.in.</p>
        </div>
        <div class="footer">
            <a href="<?php echo e($details['url']); ?>"><?php echo e(config('app.name')); ?></a>
        </div>
    </div>
</body>
</html>
<?php /**PATH D:\RMS\RMSAPI\resources\views/emails/PccUploadMail.blade.php ENDPATH**/ ?>