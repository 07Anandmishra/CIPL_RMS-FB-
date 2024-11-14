<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Documents Uploaded Notification</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:white;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .header, .footer {
            background-color: #F7F7F7;
            padding: 8px;
            text-align: center;
            color: #8B8C92;
        }
        .header a, .footer a {
            color: #8B8C92;
            text-decoration: none;
            font-weight: bold;
            font-size: 22px;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 20px auto;
            background-color: #ffffff;
            padding: 20px;
           
        }
        .content {
            padding: 20px;
            color: #727475;
            font-size: 14px;
        }
        .content h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }
        .content p {
            line-height: 1.6;
        }
       
        .disclaimer {
            font-size: 10px;
            color: grey;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <a><?php echo e(config('app.name')); ?></a>
    </div>
    <div class="container">
        <div class="content">
            
            <h2>Hi,</h2>
            <p><?php echo e(ucwords($details['candidate_name'])); ?> has successfully uploaded the documents against the <?php echo e($details['job_title']); ?> on <?php echo e($details['created_at']); ?> .</p>
            <p>Thank you!</p>
            
            <div class="disclaimer">
                <p class="disclaimer">Disclaimer:</p>
                <p class="disclaimer">This email and any attachments are intended solely for the use of the individual or entity to whom they are addressed. This communication may contain confidential and/or privileged information. If you are not the intended recipient, please notify the sender immediately and delete this email from your system. Any unauthorized use, dissemination, copying, or disclosure of this email and its contents is strictly prohibited.</p>
                <p class="disclaimer">For any concerns, please reach out to us at ta@cipl.org.in.</p>
            </div>
        </div>
    </div>
    <div class="footer">
        <a><?php echo e(config('app.name')); ?></a>
        
    </div>
</body>
</html>
<?php /**PATH D:\RMS_V2\RMSAPI_V2\resources\views/emails/AdminStatusDocument.blade.php ENDPATH**/ ?>